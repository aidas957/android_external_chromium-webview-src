.class Lcom/android/org/chromium/android_webview/AwContentViewClient$1;
.super Ljava/lang/Object;
.source "AwContentViewClient.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwContentViewClient;->enterFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContentViewClient;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwContentViewClient;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient$1;->this$0:Lcom/android/org/chromium/android_webview/AwContentViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient$1;->this$0:Lcom/android/org/chromium/android_webview/AwContentViewClient;

    # getter for: Lcom/android/org/chromium/android_webview/AwContentViewClient;->mCustomView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContentViewClient;->access$000(Lcom/android/org/chromium/android_webview/AwContentViewClient;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContentViewClient$1;->this$0:Lcom/android/org/chromium/android_webview/AwContentViewClient;

    # getter for: Lcom/android/org/chromium/android_webview/AwContentViewClient;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContentViewClient;->access$100(Lcom/android/org/chromium/android_webview/AwContentViewClient;)Lcom/android/org/chromium/android_webview/AwContents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwContents;->requestExitFullscreen()V

    .line 110
    :cond_0
    return-void
.end method
