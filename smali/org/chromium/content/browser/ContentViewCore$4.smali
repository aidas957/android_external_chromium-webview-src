.class Lorg/chromium/content/browser/ContentViewCore$4;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/PopupZoomer$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->initPopupZoomer(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mContainerViewAtCreation:Landroid/view/ViewGroup;

.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 1

    .prologue
    .line 841
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$4;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$4;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$4;->mContainerViewAtCreation:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$1700(Lorg/chromium/content/browser/ContentViewCore$4;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/content/browser/ContentViewCore$4;

    .prologue
    .line 841
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$4;->mContainerViewAtCreation:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public onPopupZoomerHidden(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 2
    .param p1, "zoomer"    # Lorg/chromium/content/browser/PopupZoomer;

    .prologue
    .line 860
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$4;->mContainerViewAtCreation:Landroid/view/ViewGroup;

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$4$2;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/ContentViewCore$4$2;-><init>(Lorg/chromium/content/browser/ContentViewCore$4;Lorg/chromium/content/browser/PopupZoomer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 869
    return-void
.end method

.method public onPopupZoomerShown(Lorg/chromium/content/browser/PopupZoomer;)V
    .locals 2
    .param p1, "zoomer"    # Lorg/chromium/content/browser/PopupZoomer;

    .prologue
    .line 848
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$4;->mContainerViewAtCreation:Landroid/view/ViewGroup;

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$4$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/ContentViewCore$4$1;-><init>(Lorg/chromium/content/browser/ContentViewCore$4;Lorg/chromium/content/browser/PopupZoomer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 856
    return-void
.end method
