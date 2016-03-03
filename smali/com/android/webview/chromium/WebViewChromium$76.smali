.class Lcom/android/webview/chromium/WebViewChromium$76;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$h:I

.field final synthetic val$oh:I

.field final synthetic val$ow:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;IIII)V
    .locals 0

    .prologue
    .line 1840
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$76;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput p2, p0, Lcom/android/webview/chromium/WebViewChromium$76;->val$w:I

    iput p3, p0, Lcom/android/webview/chromium/WebViewChromium$76;->val$h:I

    iput p4, p0, Lcom/android/webview/chromium/WebViewChromium$76;->val$ow:I

    iput p5, p0, Lcom/android/webview/chromium/WebViewChromium$76;->val$oh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$76;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium$76;->val$w:I

    iget v2, p0, Lcom/android/webview/chromium/WebViewChromium$76;->val$h:I

    iget v3, p0, Lcom/android/webview/chromium/WebViewChromium$76;->val$ow:I

    iget v4, p0, Lcom/android/webview/chromium/WebViewChromium$76;->val$oh:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/webview/chromium/WebViewChromium;->onSizeChanged(IIII)V

    .line 1844
    return-void
.end method
