.class public Lorg/chromium/android_webview/AwFormDatabase;
.super Ljava/lang/Object;
.source "AwFormDatabase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFormData()V
    .locals 0

    .prologue
    .line 21
    invoke-static {}, Lorg/chromium/android_webview/AwFormDatabase;->nativeClearFormData()V

    .line 22
    return-void
.end method

.method public static hasFormData()Z
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lorg/chromium/android_webview/AwFormDatabase;->nativeHasFormData()Z

    move-result v0

    return v0
.end method

.method private static native nativeClearFormData()V
.end method

.method private static native nativeHasFormData()Z
.end method
