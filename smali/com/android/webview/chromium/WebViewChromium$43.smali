.class Lcom/android/webview/chromium/WebViewChromium$43;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->clearFormData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;)V
    .locals 0

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$43;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$43;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    invoke-virtual {v0}, Lcom/android/webview/chromium/WebViewChromium;->clearFormData()V

    .line 1129
    return-void
.end method
