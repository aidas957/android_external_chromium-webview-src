.class Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;
.super Ljava/lang/Object;
.source "AwSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyDefaultUserAgent"
.end annotation


# static fields
.field private static final sInstance:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    # invokes: Lorg/chromium/android_webview/AwSettings;->nativeGetDefaultUserAgent()Ljava/lang/String;
    invoke-static {}, Lorg/chromium/android_webview/AwSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;->sInstance:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lorg/chromium/android_webview/AwSettings$LazyDefaultUserAgent;->sInstance:Ljava/lang/String;

    return-object v0
.end method
