.class Lcom/android/org/chromium/content/browser/ContentViewCore$10;
.super Landroid/database/ContentObserver;
.source "ContentViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/ContentViewCore;->isDeviceAccessibilityScriptInjectionEnabled()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content/browser/ContentViewCore;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2787
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$10;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$10;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$10;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2700(Lcom/android/org/chromium/content/browser/ContentViewCore;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->setAccessibilityState(Z)V

    .line 2791
    return-void
.end method
