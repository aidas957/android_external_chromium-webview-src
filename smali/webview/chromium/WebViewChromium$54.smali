.class Lwebview/chromium/WebViewChromium$54;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->removeJavascriptInterface(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$interfaceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1376
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$54;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$54;->val$interfaceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1379
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$54;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v1, p0, Lwebview/chromium/WebViewChromium$54;->val$interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lwebview/chromium/WebViewChromium;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1380
    return-void
.end method
