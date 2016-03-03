.class Lwebview/chromium/WebViewChromium$1;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->init(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$privateBrowsing:Z


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Z)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$1;->this$0:Lwebview/chromium/WebViewChromium;

    iput-boolean p2, p0, Lwebview/chromium/WebViewChromium$1;->val$privateBrowsing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$1;->this$0:Lwebview/chromium/WebViewChromium;

    # invokes: Lwebview/chromium/WebViewChromium;->initForReal()V
    invoke-static {v0}, Lwebview/chromium/WebViewChromium;->access$100(Lwebview/chromium/WebViewChromium;)V

    .line 264
    iget-boolean v0, p0, Lwebview/chromium/WebViewChromium$1;->val$privateBrowsing:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$1;->this$0:Lwebview/chromium/WebViewChromium;

    invoke-virtual {v0}, Lwebview/chromium/WebViewChromium;->destroy()V

    .line 271
    :cond_0
    return-void
.end method
