# قواعد ProGuard لتطبيق "اعرف دينك"
# هذه القواعد تقلل حجم APK وتحمي الكود

# حفظ Flutter classes
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

# حفظ Dart classes
-keep class io.flutter.embedding.** { *; }

# قواعد عامة للأندرويد
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes SourceFile,LineNumberTable

# قواعد خاصة بالتطبيق الإسلامي
-keep class com.islamic.app.** { *; }

# تحسينات للأداء
-optimizations !code/simplification/arithmetic,!code/simplification/cast,!field/*,!class/merging/*
-optimizationpasses 5
-allowaccessmodification

# قواعد للمكتبات الشائعة
-dontwarn okhttp3.**
-dontwarn okio.**
-dontwarn javax.annotation.**

# حفظ enums
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# حفظ serializable classes
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}