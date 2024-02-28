<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['file'])) {
    $targetDirectory = './'; 
    $targetFile = $targetDirectory . basename($_FILES['file']['name']);
    
    if (move_uploaded_file($_FILES['file']['tmp_name'], $targetFile)) {
        echo 'تم حفظ الملف بنجاح';
    } else {
        echo 'فشل في حفظ الملف';
    }
} else {
    echo 'طلب غير صحيح';
}

?>
