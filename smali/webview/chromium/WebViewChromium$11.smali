.class Lwebview/chromium/WebViewChromium$11;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->setNetworkAvailable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$networkUp:Z


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Z)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$11;->this$0:Lwebview/chromium/WebViewChromium;

    iput-boolean p2, p0, Lwebview/chromium/WebViewChromium$11;->val$networkUp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$11;->this$0:Lwebview/chromium/WebViewChromium;

    iget-boolean v1, p0, Lwebview/chromium/WebViewChromium$11;->val$networkUp:Z

    invoke-virtual {v0, v1}, Lwebview/chromium/WebViewChromium;->setNetworkAvailable(Z)V

    .line 478
    return-void
.end method
