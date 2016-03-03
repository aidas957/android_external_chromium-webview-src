.class Lwebview/chromium/WebViewChromium$77;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->onScrollChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$l:I

.field final synthetic val$oldl:I

.field final synthetic val$oldt:I

.field final synthetic val$t:I


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;IIII)V
    .locals 0

    .prologue
    .line 1854
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$77;->this$0:Lwebview/chromium/WebViewChromium;

    iput p2, p0, Lwebview/chromium/WebViewChromium$77;->val$l:I

    iput p3, p0, Lwebview/chromium/WebViewChromium$77;->val$t:I

    iput p4, p0, Lwebview/chromium/WebViewChromium$77;->val$oldl:I

    iput p5, p0, Lwebview/chromium/WebViewChromium$77;->val$oldt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1857
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$77;->this$0:Lwebview/chromium/WebViewChromium;

    iget v1, p0, Lwebview/chromium/WebViewChromium$77;->val$l:I

    iget v2, p0, Lwebview/chromium/WebViewChromium$77;->val$t:I

    iget v3, p0, Lwebview/chromium/WebViewChromium$77;->val$oldl:I

    iget v4, p0, Lwebview/chromium/WebViewChromium$77;->val$oldt:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lwebview/chromium/WebViewChromium;->onScrollChanged(IIII)V

    .line 1858
    return-void
.end method
