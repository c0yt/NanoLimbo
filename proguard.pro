# 保留 Minecraft Limbo 各子包（排除顶级 NanoLimbo 本身）
-keep class ua.nanit.limbo.configuration.** { *; }
-keep class ua.nanit.limbo.connection.** { *; }
-keep class ua.nanit.limbo.protocol.** { *; }
-keep class ua.nanit.limbo.server.** { *; }
-keep class ua.nanit.limbo.util.** { *; }
-keep class ua.nanit.limbo.world.** { *; }
-keep class ua.nanit.limbo.LimboConstants { *; }
-keep class ua.nanit.limbo.BuildConfig { *; }

# NanoLimbo 类：只保留 main() 入口，其余全部混淆
-keep class ua.nanit.limbo.NanoLimbo {
    public static void main(java.lang.String[]);
}

# 第三方库
-keep class io.netty.** { *; }
-keep class org.spongepowered.** { *; }
-keep class com.grack.** { *; }
-keep class net.kyori.** { *; }
-keep class com.google.gson.** { *; }
-keep class ch.qos.** { *; }
-keep class org.slf4j.** { *; }
-keep class org.yaml.** { *; }
-keep class javax.** { *; }

-dontwarn io.netty.**
-dontwarn org.spongepowered.**
-dontwarn com.grack.**
-dontwarn net.kyori.**
-dontwarn com.google.gson.**
-dontwarn ch.qos.**
-dontwarn org.slf4j.**
-dontwarn org.yaml.**
-dontwarn javax.**

# 混淆参数
-optimizationpasses 2
-allowaccessmodification
-overloadaggressively
-useuniqueclassmembernames

# 字符串加密 URL、IP、环境变量名等
-adaptclassstrings

-keepattributes SourceFile,LineNumberTable,*Annotation*,Signature,Exceptions,InnerClasses,EnclosingMethod
-renamesourcefileattribute SourceFile

-target 1.8
