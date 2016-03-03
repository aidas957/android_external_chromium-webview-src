.class Lcom/android/webview/chromium/WebViewChromium$73;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$changedView:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$73;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$73;->val$changedView:Landroid/view/View;

    iput p3, p0, Lcom/android/webview/chromium/WebViewChromium$73;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$73;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$73;->val$changedView:Landroid/view/View;

    iget v2, p0, Lcom/android/webview/chromium/WebViewChromium$73;->val$visibility:I

    invoke-virtual {v0, v1, v2}, Lcom/android/webview/chromium/WebViewChromium;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1796
    return-void
.end method
