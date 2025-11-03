from dotenv import load_dotenv, find_dotenv
import os

def load_env(path=None):
    """โหลดค่า .env เข้าสู่ environment variables"""
    # หา .env อัตโนมัติ ถ้าไม่ส่ง path มา
    dotenv_path = path or find_dotenv()
    load_dotenv(dotenv_path=dotenv_path, override=True)
    return True

def get_env(var_name, default=None):
    """อ่านค่าตัวแปรแวดล้อมตามชื่อที่ขอ"""
    # เผื่อมีใครยังไม่ load เรียกซ้ำให้ชัวร์
    load_dotenv(find_dotenv(), override=True)
    value = os.getenv(var_name, default)
    # Robot จะมองชื่อคีย์เวิร์ดเป็น 'Get Env' จากชื่อฟังก์ชัน get_env
    return value
