.class public Lorg/chromium/android_webview/AwContentsStatics;
.super Ljava/lang/Object;
.source "AwContentsStatics.java"


# static fields
.field private static sClientCertLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

.field private static sUnreachableWebDataUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 40
    invoke-static {}, Lorg/chromium/android_webview/AwContentsStatics;->getClientCertLookupTable()Lorg/chromium/android_webview/ClientCertLookupTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/android_webview/ClientCertLookupTable;->clear()V

    .line 41
    invoke-static {p0}, Lorg/chromium/android_webview/AwContentsStatics;->nativeClearClientCertPreferences(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method private static clientCertificatesCleared(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static getClientCertLookupTable()Lorg/chromium/android_webview/ClientCertLookupTable;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 29
    sget-object v0, Lorg/chromium/android_webview/AwContentsStatics;->sClientCertLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lorg/chromium/android_webview/ClientCertLookupTable;

    invoke-direct {v0}, Lorg/chromium/android_webview/ClientCertLookupTable;-><init>()V

    sput-object v0, Lorg/chromium/android_webview/AwContentsStatics;->sClientCertLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

    .line 32
    :cond_0
    sget-object v0, Lorg/chromium/android_webview/AwContentsStatics;->sClientCertLookupTable:Lorg/chromium/android_webview/ClientCertLookupTable;

    return-object v0
.end method

.method public static getUnreachableWebDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/chromium/android_webview/AwContentsStatics;->sUnreachableWebDataUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lorg/chromium/android_webview/AwContentsStatics;->nativeGetUnreachableWebDataUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/android_webview/AwContentsStatics;->sUnreachableWebDataUrl:Ljava/lang/String;

    .line 70
    :cond_0
    sget-object v0, Lorg/chromium/android_webview/AwContentsStatics;->sUnreachableWebDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeClearClientCertPreferences(Ljava/lang/Runnable;)V
.end method

.method private static native nativeGetUnreachableWebDataUrl()Ljava/lang/String;
.end method

.method private static native nativeRegisterCrashHandler(Ljava/lang/String;)V
.end method

.method private static native nativeSetDataReductionProxyEnabled(Z)V
.end method

.method private static native nativeSetDataReductionProxyKey(Ljava/lang/String;)V
.end method

.method private static native nativeSetLegacyCacheRemovalDelayForTest(J)V
.end method

.method private static native nativeSetRecordFullDocument(Z)V
.end method

.method public static registerCrashHandler(Ljava/lang/String;)V
    .locals 0
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Lorg/chromium/android_webview/AwContentsStatics;->nativeRegisterCrashHandler(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static setRecordFullDocument(Z)V
    .locals 0
    .param p0, "recordFullDocument"    # Z

    .prologue
    .line 74
    invoke-static {p0}, Lorg/chromium/android_webview/AwContentsStatics;->nativeSetRecordFullDocument(Z)V

    .line 75
    return-void
.end method
