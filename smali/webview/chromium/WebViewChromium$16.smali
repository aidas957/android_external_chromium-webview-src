.class Lwebview/chromium/WebViewChromium$16;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$autoname:Z

.field final synthetic val$basename:Ljava/lang/String;

.field final synthetic val$callback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$16;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$16;->val$basename:Ljava/lang/String;

    iput-boolean p3, p0, Lwebview/chromium/WebViewChromium$16;->val$autoname:Z

    iput-object p4, p0, Lwebview/chromium/WebViewChromium$16;->val$callback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 675
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$16;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v1, p0, Lwebview/chromium/WebViewChromium$16;->val$basename:Ljava/lang/String;

    iget-boolean v2, p0, Lwebview/chromium/WebViewChromium$16;->val$autoname:Z

    iget-object v3, p0, Lwebview/chromium/WebViewChromium$16;->val$callback:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2, v3}, Lwebview/chromium/WebViewChromium;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 676
    return-void
.end method
