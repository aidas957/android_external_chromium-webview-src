.class public Lcom/android/org/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;
.super Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;
.source "JellyBeanBrowserAccessibilityManager.java"


# instance fields
.field private mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;


# direct methods
.method constructor <init>(JLcom/android/org/chromium/content/browser/ContentViewCore;)V
    .locals 3
    .param p1, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p3, "contentViewCore"    # Lcom/android/org/chromium/content/browser/ContentViewCore;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;-><init>(JLcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 28
    move-object v0, p0

    .line 29
    .local v0, "delegate":Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    new-instance v1, Lcom/android/org/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager$1;

    invoke-direct {v1, p0, v0}, Lcom/android/org/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager$1;-><init>(Lcom/android/org/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    iput-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 46
    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method
