.class Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwComponentCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContents;


# direct methods
.method private constructor <init>(Lorg/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;->this$0:Lorg/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lorg/chromium/android_webview/AwContents$1;

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;-><init>(Lorg/chromium/android_webview/AwContents;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 539
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 6
    .param p1, "level"    # I

    .prologue
    .line 529
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;->this$0:Lorg/chromium/android_webview/AwContents;

    # invokes: Lorg/chromium/android_webview/AwContents;->isDestroyed()Z
    invoke-static {v2}, Lorg/chromium/android_webview/AwContents;->access$700(Lorg/chromium/android_webview/AwContents;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;->this$0:Lorg/chromium/android_webview/AwContents;

    # invokes: Lorg/chromium/android_webview/AwContents;->getGlobalVisibleRect()Landroid/graphics/Rect;
    invoke-static {v2}, Lorg/chromium/android_webview/AwContents;->access$1400(Lorg/chromium/android_webview/AwContents;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    .line 531
    .local v1, "visibleRectEmpty":Z
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mIsViewVisible:Z
    invoke-static {v2}, Lorg/chromium/android_webview/AwContents;->access$1500(Lorg/chromium/android_webview/AwContents;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mIsWindowVisible:Z
    invoke-static {v2}, Lorg/chromium/android_webview/AwContents;->access$1600(Lorg/chromium/android_webview/AwContents;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 532
    .local v0, "visible":Z
    :goto_1
    iget-object v2, p0, Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;->this$0:Lorg/chromium/android_webview/AwContents;

    iget-object v3, p0, Lorg/chromium/android_webview/AwContents$AwComponentCallbacks;->this$0:Lorg/chromium/android_webview/AwContents;

    # getter for: Lorg/chromium/android_webview/AwContents;->mNativeAwContents:J
    invoke-static {v3}, Lorg/chromium/android_webview/AwContents;->access$800(Lorg/chromium/android_webview/AwContents;)J

    move-result-wide v4

    # invokes: Lorg/chromium/android_webview/AwContents;->nativeTrimMemory(JIZ)V
    invoke-static {v2, v4, v5, p1, v0}, Lorg/chromium/android_webview/AwContents;->access$1700(Lorg/chromium/android_webview/AwContents;JIZ)V

    goto :goto_0

    .line 531
    .end local v0    # "visible":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
