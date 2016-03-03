.class Lwebview/chromium/WebViewChromium$68;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1693
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$68;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$68;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1696
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$68;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v1, p0, Lwebview/chromium/WebViewChromium$68;->val$newConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Lwebview/chromium/WebViewChromium;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1697
    return-void
.end method
