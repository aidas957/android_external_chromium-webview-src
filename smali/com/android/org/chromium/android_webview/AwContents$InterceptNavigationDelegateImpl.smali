.class Lcom/android/org/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Lcom/android/org/chromium/components/navigation_interception/InterceptNavigationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterceptNavigationDelegateImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;


# direct methods
.method private constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Lcom/android/org/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lcom/android/org/chromium/android_webview/AwContents$1;

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;-><init>(Lcom/android/org/chromium/android_webview/AwContents;)V

    return-void
.end method


# virtual methods
.method public shouldIgnoreNavigation(Lcom/android/org/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 4
    .param p1, "navigationParams"    # Lcom/android/org/chromium/components/navigation_interception/NavigationParams;

    .prologue
    .line 411
    iget-object v1, p1, Lcom/android/org/chromium/components/navigation_interception/NavigationParams;->url:Ljava/lang/String;

    .line 412
    .local v1, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 413
    .local v0, "ignoreNavigation":Z
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mDeferredShouldOverrideUrlLoadingIsPendingForPopup:Z
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/AwContents;->access$400(Lcom/android/org/chromium/android_webview/AwContents;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    const/4 v3, 0x0

    # setter for: Lcom/android/org/chromium/android_webview/AwContents;->mDeferredShouldOverrideUrlLoadingIsPendingForPopup:Z
    invoke-static {v2, v3}, Lcom/android/org/chromium/android_webview/AwContents;->access$402(Lcom/android/org/chromium/android_webview/AwContents;Z)Z

    .line 417
    iget-boolean v2, p1, Lcom/android/org/chromium/components/navigation_interception/NavigationParams;->isPost:Z

    if-nez v2, :cond_0

    .line 418
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/AwContents;->access$300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwContentsClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/org/chromium/android_webview/AwContentsClient;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    .line 424
    :cond_0
    if-nez v0, :cond_1

    .line 425
    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwContents$InterceptNavigationDelegateImpl;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    # getter for: Lcom/android/org/chromium/android_webview/AwContents;->mContentsClient:Lcom/android/org/chromium/android_webview/AwContentsClient;
    invoke-static {v2}, Lcom/android/org/chromium/android_webview/AwContents;->access$300(Lcom/android/org/chromium/android_webview/AwContents;)Lcom/android/org/chromium/android_webview/AwContentsClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwContentsClient;->getCallbackHelper()Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;->postOnPageStarted(Ljava/lang/String;)V

    .line 427
    :cond_1
    return v0
.end method
