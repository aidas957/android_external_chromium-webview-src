.class Lorg/chromium/android_webview/JsResultHandler;
.super Ljava/lang/Object;
.source "JsResultHandler.java"

# interfaces
.implements Lorg/chromium/android_webview/JsPromptResultReceiver;
.implements Lorg/chromium/android_webview/JsResultReceiver;


# instance fields
.field private mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;

.field private final mId:I


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContentsClientBridge;I)V
    .locals 0
    .param p1, "bridge"    # Lorg/chromium/android_webview/AwContentsClientBridge;
    .param p2, "id"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;

    .line 15
    iput p2, p0, Lorg/chromium/android_webview/JsResultHandler;->mId:I

    .line 16
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/android_webview/JsResultHandler;)Lorg/chromium/android_webview/AwContentsClientBridge;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/JsResultHandler;

    .prologue
    .line 9
    iget-object v0, p0, Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;

    return-object v0
.end method

.method static synthetic access$002(Lorg/chromium/android_webview/JsResultHandler;Lorg/chromium/android_webview/AwContentsClientBridge;)Lorg/chromium/android_webview/AwContentsClientBridge;
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/JsResultHandler;
    .param p1, "x1"    # Lorg/chromium/android_webview/AwContentsClientBridge;

    .prologue
    .line 9
    iput-object p1, p0, Lorg/chromium/android_webview/JsResultHandler;->mBridge:Lorg/chromium/android_webview/AwContentsClientBridge;

    return-object p1
.end method

.method static synthetic access$100(Lorg/chromium/android_webview/JsResultHandler;)I
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/JsResultHandler;

    .prologue
    .line 9
    iget v0, p0, Lorg/chromium/android_webview/JsResultHandler;->mId:I

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/chromium/android_webview/JsResultHandler$2;

    invoke-direct {v0, p0}, Lorg/chromium/android_webview/JsResultHandler$2;-><init>(Lorg/chromium/android_webview/JsResultHandler;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public confirm()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/JsResultHandler;->confirm(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public confirm(Ljava/lang/String;)V
    .locals 1
    .param p1, "promptResult"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lorg/chromium/android_webview/JsResultHandler$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/android_webview/JsResultHandler$1;-><init>(Lorg/chromium/android_webview/JsResultHandler;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method
