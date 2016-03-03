.class Lcom/android/org/chromium/android_webview/AwContents$AwLayoutChangeListener;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwLayoutChangeListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 543
    const-class v0, Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/android_webview/AwContents$AwLayoutChangeListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwLayoutChangeListener;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Lcom/android/org/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lcom/android/org/chromium/android_webview/AwContents$1;

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwContents$AwLayoutChangeListener;-><init>(Lcom/android/org/chromium/android_webview/AwContents;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 547
    sget-boolean v0, Lcom/android/org/chromium/android_webview/AwContents$AwLayoutChangeListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwLayoutChangeListener;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$500(Lcom/android/org/chromium/android_webview/AwContents;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwContents$AwLayoutChangeListener;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mLayoutSizer:Lcom/android/org/chromium/android_webview/AwLayoutSizer;
    invoke-static {v0}, Lcom/android/org/chromium/android_webview/AwContents;->access$1100(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwLayoutSizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwLayoutSizer;->onLayoutChange()V

    .line 549
    return-void
.end method
