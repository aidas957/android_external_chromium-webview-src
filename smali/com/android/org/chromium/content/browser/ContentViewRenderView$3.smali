.class Lcom/android/org/chromium/content/browser/ContentViewRenderView$3;
.super Ljava/lang/Object;
.source "ContentViewRenderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/ContentViewRenderView;->onSwapBuffersCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/ContentViewRenderView;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content/browser/ContentViewRenderView;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/ContentViewRenderView$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewRenderView$3;->this$0:Lcom/android/org/chromium/content/browser/ContentViewRenderView;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewRenderView;->access$400(Lcom/android/org/chromium/content/browser/ContentViewRenderView;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundResource(I)V

    .line 211
    return-void
.end method
