.class Lwebview/chromium/WebViewChromium$31;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->requestFocusNodeHref(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$hrefMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$31;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$31;->val$hrefMsg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$31;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v1, p0, Lwebview/chromium/WebViewChromium$31;->val$hrefMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lwebview/chromium/WebViewChromium;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 917
    return-void
.end method
