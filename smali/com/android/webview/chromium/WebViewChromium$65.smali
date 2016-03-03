.class Lcom/android/webview/chromium/WebViewChromium$65;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->onOverScrolled(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$clampedX:Z

.field final synthetic val$clampedY:Z

.field final synthetic val$scrollX:I

.field final synthetic val$scrollY:I


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;IIZZ)V
    .locals 0

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$65;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput p2, p0, Lcom/android/webview/chromium/WebViewChromium$65;->val$scrollX:I

    iput p3, p0, Lcom/android/webview/chromium/WebViewChromium$65;->val$scrollY:I

    iput-boolean p4, p0, Lcom/android/webview/chromium/WebViewChromium$65;->val$clampedX:Z

    iput-boolean p5, p0, Lcom/android/webview/chromium/WebViewChromium$65;->val$clampedY:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$65;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium$65;->val$scrollX:I

    iget v2, p0, Lcom/android/webview/chromium/WebViewChromium$65;->val$scrollY:I

    iget-boolean v3, p0, Lcom/android/webview/chromium/WebViewChromium$65;->val$clampedX:Z

    iget-boolean v4, p0, Lcom/android/webview/chromium/WebViewChromium$65;->val$clampedY:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/webview/chromium/WebViewChromium;->onOverScrolled(IIZZ)V

    .line 1638
    return-void
.end method
