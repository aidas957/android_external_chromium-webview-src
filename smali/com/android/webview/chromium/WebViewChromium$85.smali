.class Lcom/android/webview/chromium/WebViewChromium$85;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->setBackgroundColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;I)V
    .locals 0

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$85;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput p2, p0, Lcom/android/webview/chromium/WebViewChromium$85;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$85;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium$85;->val$color:I

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->setBackgroundColor(I)V

    .line 1986
    return-void
.end method
