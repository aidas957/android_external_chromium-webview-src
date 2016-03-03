.class Lwebview/chromium/WebViewContentsClientAdapter$AwHttpAuthHandlerAdapter;
.super Landroid/webkit/HttpAuthHandler;
.source "WebViewContentsClientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwebview/chromium/WebViewContentsClientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AwHttpAuthHandlerAdapter"
.end annotation


# instance fields
.field private mAwHandler:Lorg/chromium/android_webview/AwHttpAuthHandler;


# direct methods
.method public constructor <init>(Lorg/chromium/android_webview/AwHttpAuthHandler;)V
    .locals 0
    .param p1, "awHandler"    # Lorg/chromium/android_webview/AwHttpAuthHandler;

    .prologue
    .line 1026
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;-><init>()V

    .line 1027
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter$AwHttpAuthHandlerAdapter;->mAwHandler:Lorg/chromium/android_webview/AwHttpAuthHandler;

    .line 1028
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$AwHttpAuthHandlerAdapter;->mAwHandler:Lorg/chromium/android_webview/AwHttpAuthHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwHttpAuthHandler;->cancel()V

    .line 1045
    return-void
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1032
    if-nez p1, :cond_0

    .line 1033
    const-string p1, ""

    .line 1036
    :cond_0
    if-nez p2, :cond_1

    .line 1037
    const-string p2, ""

    .line 1039
    :cond_1
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$AwHttpAuthHandlerAdapter;->mAwHandler:Lorg/chromium/android_webview/AwHttpAuthHandler;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/android_webview/AwHttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method public useHttpAuthUsernamePassword()Z
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$AwHttpAuthHandlerAdapter;->mAwHandler:Lorg/chromium/android_webview/AwHttpAuthHandler;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwHttpAuthHandler;->isFirstAttempt()Z

    move-result v0

    return v0
.end method
