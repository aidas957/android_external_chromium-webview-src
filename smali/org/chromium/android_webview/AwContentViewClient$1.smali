.class Lorg/chromium/android_webview/AwContentViewClient$1;
.super Ljava/lang/Object;
.source "AwContentViewClient.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwContentViewClient;->enterFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContentViewClient;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContentViewClient;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentViewClient$1;->this$0:Lorg/chromium/android_webview/AwContentViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentViewClient$1;->this$0:Lorg/chromium/android_webview/AwContentViewClient;

    # getter for: Lorg/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContentViewClient;->access$000(Lorg/chromium/android_webview/AwContentViewClient;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/chromium/android_webview/AwContentViewClient$1;->this$0:Lorg/chromium/android_webview/AwContentViewClient;

    # getter for: Lorg/chromium/android_webview/AwContentViewClient;->mAwContents:Lorg/chromium/android_webview/AwContents;
    invoke-static {v0}, Lorg/chromium/android_webview/AwContentViewClient;->access$100(Lorg/chromium/android_webview/AwContentViewClient;)Lorg/chromium/android_webview/AwContents;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContents;->requestExitFullscreen()V

    .line 110
    :cond_0
    return-void
.end method
