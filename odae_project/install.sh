#!/bin/bash

# عرض رسالة ترحيبية
echo "🛠️  Installing ODAE Tool..."

# التأكد من صلاحيات الجذر
if [ "$(id -u)" -ne 0 ]; then
    echo "⚠️  يجب تشغيل السكربت كـ root أو باستخدام sudo."
    exit 1
fi

# تثبيت الأدوات اللازمة (إذا كانت هناك أي تبعيات)
echo "🔧 Installing dependencies..."
sudo apt-get update
sudo apt-get install -y git curl

# نسخ السكربتات إلى المسار المناسب
echo "🔄 Copying scripts to /usr/local/bin"
sudo cp odae.sh /usr/local/bin/odae
sudo cp update.sh /usr/local/bin/update_odae
sudo cp mac_changer.sh /usr/local/bin/mac_changer

# إضافة صلاحيات التنفيذ
echo "⚙️ Adding execute permissions to scripts"
sudo chmod +x /usr/local/bin/odae
sudo chmod +x /usr/local/bin/update_odae
sudo chmod +x /usr/local/bin/mac_changer

# عرض رسالة تأكيد
echo "✅ ODAE Tool has been successfully installed!"
echo "You can now use 'odae' command to run the tool."
