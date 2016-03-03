.class Lcom/android/webview/chromium/WebViewChromium$52;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$listener:Landroid/webkit/WebView$PictureListener;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/webkit/WebView$PictureListener;)V
    .locals 0

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$52;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$52;->val$listener:Landroid/webkit/WebView$PictureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$52;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$52;->val$listener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1346
    return-void
.end method
