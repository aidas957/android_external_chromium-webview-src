.class Lwebview/chromium/WebViewChromium$83;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$heightMeasureSpec:I

.field final synthetic val$widthMeasureSpec:I


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;II)V
    .locals 0

    .prologue
    .line 1951
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$83;->this$0:Lwebview/chromium/WebViewChromium;

    iput p2, p0, Lwebview/chromium/WebViewChromium$83;->val$widthMeasureSpec:I

    iput p3, p0, Lwebview/chromium/WebViewChromium$83;->val$heightMeasureSpec:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1954
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$83;->this$0:Lwebview/chromium/WebViewChromium;

    iget v1, p0, Lwebview/chromium/WebViewChromium$83;->val$widthMeasureSpec:I

    iget v2, p0, Lwebview/chromium/WebViewChromium$83;->val$heightMeasureSpec:I

    invoke-virtual {v0, v1, v2}, Lwebview/chromium/WebViewChromium;->onMeasure(II)V

    .line 1955
    return-void
.end method
