.class Lwebview/chromium/WebViewChromium$40;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$40;->this$0:Lwebview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$40;->this$0:Lwebview/chromium/WebViewChromium;

    invoke-virtual {v0}, Lwebview/chromium/WebViewChromium;->onResume()V

    .line 1078
    return-void
.end method
