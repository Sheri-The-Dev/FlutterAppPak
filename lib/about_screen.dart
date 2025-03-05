import os
import subprocess
import random
from datetime import datetime, timedelta

# ======================
# ⚙️ CONFIG - Yahan apni settings daalo
# ======================
REPO_PATH = r"C:\Users\user\Downloads\FlutterAppPak-main\FlutterAppPak-main"
FILE_NAME = "dummy.txt"  # Naya file name taake conflict na ho

# 🎯 NEW DATES SET KARO (Jo dates chahiye unko yahan daalo)
START_DATE = datetime(2026, 1, 1)  # <--- YEH DATE CHANGE KARO
NUM_DAYS = 1                     # <--- Kitne din chahiye
COMMITS_PER_DAY = 2               # <--- Roz kitne commits (1-5 recommended)

# Professional messages pool
MESSAGES_POOL = [
    "Oh my yes"
    "
]

# ======================
# 🔧 HELPER FUNCTIONS
# ======================

def run_cmd(cmd, env=None, check=True):
    """Command run karo aur result lo"""
    result = subprocess.run(cmd, capture_output=True, text=True, env=env, shell=True)
    if check and result.returncode != 0:
        print(f"⚠️  Warning: {result.stderr}")
    return result

def reset_repo():
    """🔥 Purane commits hatao, fresh start lo"""
    print("\n🧹 Cleaning old commits...")

    # Check karo orphan branch bana sakein
    run_cmd(["git", "checkout", "--orphan", "temp_branch"], check=False)
    run_cmd(["git", "add", "-A"])
    run_cmd(["git", "commit", "-m", "Initial commit", "--allow-empty"], check=False)

    # Main branch delete karo aur temp ko main banao
    run_cmd(["git", "branch", "-D", "main"], check=False) 
    run_cmd(["git", "branch", "-m", "main"], check=False)

    print("✅ Fresh repository ready!")

def generate_commits():
    """📅 Past dates pe commits banao"""
    print(f"\n🚀 Generating {NUM_DAYS} days x {COMMITS_PER_DAY} commits = {NUM_DAYS * COMMITS_PER_DAY} total commits")
    print(f"📅 From: {START_DATE.strftime('%Y-%m-%d')} To: {(START_DATE + timedelta(days=NUM_DAYS-1)).strftime('%Y-%m-%d')}")
    print("=" * 60)

    commit_count = 0
    msg_index = 0

    for day in range(NUM_DAYS):
        # Date calculate karo
        current_date = START_DATE + timedelta(days=day)

        # Har din multiple commits
        for commit_in_day in range(COMMITS_PER_DAY):
            # Random time (9 AM - 8 PM)
            hour = random.randint(9, 20)
            minute = random.randint(0, 59)
            second = random.randint(0, 59)

            # Git format: "YYYY-MM-DD HH:MM:SS +Timezone"
            date_str = f"{current_date.strftime('%Y-%m-%d')} {hour:02d}:{minute:02d}:{second:02d}"
            date_with_tz = f"{date_str} +0500"  # Pakistan Time

            # File update karo unique content ke saath
            content = f"[{date_str}] Activity #{commit_count+1}: {MESSAGES_POOL[msg_index % len(MESSAGES_POOL)]}\n"
            with open(FILE_NAME, "a", encoding="utf-8") as f:
                f.write(content)

            # Git add
            run_cmd(["git", "add", FILE_NAME], check=False)

            # Environment set karo (YEH SAB SE IMPORTANT HAI!)
            env = os.environ.copy()
            env["GIT_AUTHOR_DATE"] = date_with_tz
            env["GIT_COMMITTER_DATE"] = date_with_tz

            # Commit karo
            msg = f"Day {day+1}.{commit_in_day+1}: {MESSAGES_POOL[msg_index % len(MESSAGES_POOL)]}"
            result = run_cmd(["git", "commit", "-m", msg], env=env, check=False)

            if result.returncode == 0:
                commit_count += 1
                print(f"✅ [{commit_count:02d}] {current_date.strftime('%Y-%m-%d')} {hour:02d}:{minute:02d} - {msg[:50]}...")
            else:
                print(f"❌ Failed: {result.stderr[:100]}")

            msg_index += 1

    print("=" * 60)
    print(f"🎉 Successfully created {commit_count} commits!")
    return commit_count

def verify_commits():
    """🔍 Verify karo ke sahi dates pe commits hain"""
    print("\n📊 Verifying commit dates...")
    result = run_cmd(["git", "log", "--oneline", "--format=%h %ad %s", "--date=format:%Y-%m-%d %H:%M", "-n", "10"])
    if result.stdout:
        print("Recent commits:")
        for line in result.stdout.strip().split("\n")[:5]:
            print(f"   {line}")

# ======================
# 🚀 MAIN EXECUTION
# ======================
if __name__ == "__main__":
    try:
        # 1. Repository mein jao
        os.chdir(REPO_PATH)
        print(f"📁 Repository: {REPO_PATH}")

        # 2. Check karo git repo hai
        if not os.path.exists(".git"):
            print("❌ Git repository nahi mila! 'git init' pehle run karo.")
            exit(1)

        # 3. Purana file delete karo taake fresh start ho
        if os.path.exists(FILE_NAME):
            os.remove(FILE_NAME)
            print(f"🗑️  Old {FILE_NAME} deleted")

        # 4. Reset karo (Naya history banao)
        reset_repo()

        # 5. Commits generate karo
        total = generate_commits()

        # 6. Verify karo
        verify_commits()

        print("\n" + "=" * 60)
        print("✅ ALL DONE! Ab push karo:")
        print("   git push -f origin main")
        print("\n⚠️  NOTE: Force push kar rahe ho, agar team mein kaam kar rahe ho toh careful raho!")

    except Exception as e:
        print(f"\n❌ Error: {e}")
        import traceback
        traceback.print_exc()Initial project setupAdded core project structure
Implemented base functionality
Updated application logic
Fixed minor issues
Improved performance
