.class public Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;
.super Ljava/lang/Object;
.source "BrowserAccessibilityManager.java"


# instance fields
.field private mAccessibilityFocusId:I

.field private mAccessibilityFocusRect:Landroid/graphics/Rect;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

.field private mCurrentRootId:I

.field private mIsHovering:Z

.field private mLastHoverId:I

.field private mNativeObj:J

.field private mNotifyFrameInfoInitializedCalled:Z

.field private mPendingScrollToMakeNodeVisible:Z

.field private final mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

.field private mSelectionEndIndex:I

.field private mSelectionGranularity:I

.field private mSelectionStartIndex:I

.field private final mTempLocation:[I

.field private mUserHasTouchExplored:Z

.field private final mView:Landroid/view/ViewGroup;

.field private mVisible:Z


# direct methods
.method protected constructor <init>(JLcom/android/org/chromium/content/browser/ContentViewCore;)V
    .locals 3
    .param p1, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p3, "contentViewCore"    # Lcom/android/org/chromium/content/browser/ContentViewCore;

    .prologue
    const/4 v1, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mTempLocation:[I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    .line 95
    iput-wide p1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    .line 96
    iput-object p3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    .line 97
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->setBrowserAccessibilityManager(Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 98
    iput v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 100
    iput v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    .line 101
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    .line 102
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lcom/android/org/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    .line 103
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 106
    return-void
.end method

.method private addAccessibilityNodeInfoChild(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "childId"    # I

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 667
    return-void
.end method

.method private announceLiveRegionText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 657
    return-void
.end method

.method private buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 8
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    const/4 v0, 0x0

    .line 502
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v4, v0

    .line 520
    :cond_1
    :goto_0
    return-object v4

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 513
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 514
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 516
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePopulateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    move-object v4, v0

    .line 518
    goto :goto_0
.end method

.method private static create(JLcom/android/org/chromium/content/browser/ContentViewCore;)Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;
    .locals 2
    .param p0, "nativeBrowserAccessibilityManagerAndroid"    # J
    .param p2, "contentViewCore"    # Lcom/android/org/chromium/content/browser/ContentViewCore;

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 85
    new-instance v0, Lcom/android/org/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/chromium/content/browser/accessibility/JellyBeanBrowserAccessibilityManager;-><init>(JLcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 88
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;-><init>(JLcom/android/org/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method

.method private createNodeForHost(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .param p1, "rootId"    # I

    .prologue
    .line 535
    iget-object v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 536
    .local v2, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 537
    .local v3, "source":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 540
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 541
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 542
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 543
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 544
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 547
    iget-object v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 548
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 549
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 553
    :cond_0
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 554
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 555
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 559
    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 560
    iget-object v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 563
    :cond_1
    return-object v2

    .line 553
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private finishGranularityMove(Ljava/lang/String;ZIIZ)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "extendSelection"    # Z
    .param p3, "itemStartIndex"    # I
    .param p4, "itemEndIndex"    # I
    .param p5, "forwards"    # Z

    .prologue
    .line 398
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/16 v2, 0x2000

    invoke-direct {p0, v1, v2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 400
    .local v0, "selectionEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/high16 v2, 0x20000

    invoke-direct {p0, v1, v2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v7

    .line 403
    .local v7, "traverseEvent":Landroid/view/accessibility/AccessibilityEvent;
    if-nez v7, :cond_1

    .line 404
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 410
    :cond_1
    if-eqz p5, :cond_4

    .line 411
    iput p4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 414
    :goto_1
    if-nez p2, :cond_2

    .line 415
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    iput v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 417
    :cond_2
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v5, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    iget v6, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 424
    :cond_3
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 425
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 426
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 430
    invoke-virtual {v7, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 431
    invoke-virtual {v7, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 432
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 433
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 434
    invoke-virtual {v7, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 437
    if-eqz p5, :cond_5

    .line 438
    const/16 v1, 0x100

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 444
    :goto_2
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 445
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v7}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    .line 413
    :cond_4
    iput p3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    goto :goto_1

    .line 440
    :cond_5
    const/16 v1, 0x200

    invoke-virtual {v7, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    goto :goto_2
.end method

.method private getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 524
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 525
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 526
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 527
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 529
    :cond_0
    return-object v0
.end method

.method private handleCheckStateChanged(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 596
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 597
    return-void
.end method

.method private handleContentChanged(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/16 v4, 0x800

    .line 616
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetRootId(J)I

    move-result v0

    .line 617
    .local v0, "rootId":I
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-eq v0, v1, :cond_0

    .line 618
    iput v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    .line 619
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 623
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    goto :goto_0
.end method

.method private handleEditableTextChanged(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 606
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 607
    return-void
.end method

.method private handleFocusChanged(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 590
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 591
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 592
    return-void
.end method

.method private handleHover(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 646
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    if-ne v0, p1, :cond_0

    .line 652
    :goto_0
    return-void

    .line 649
    :cond_0
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 650
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 651
    iput p1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mLastHoverId:I

    goto :goto_0
.end method

.method private handleNavigate()V
    .locals 2

    .prologue
    .line 627
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    .line 631
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 632
    return-void
.end method

.method private handlePageLoaded(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    if-eqz v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->shouldSetAccessibilityFocusOnPageLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method private handleScrollPositionChanged(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 636
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 637
    return-void
.end method

.method private handleScrolledToAnchor(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 642
    return-void
.end method

.method private handleSliderChanged(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 611
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 612
    return-void
.end method

.method private handleTextSelectionChanged(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 601
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 602
    return-void
.end method

.method private isFrameInfoInitialized()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->getContentWidthCss()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->getContentHeightCss()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isValidMovementGranularity(I)Z
    .locals 1
    .param p0, "granularity"    # I

    .prologue
    .line 182
    packed-switch p0, :pswitch_data_0

    .line 188
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 186
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private jumpToElementType(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "elementType"    # Ljava/lang/String;
    .param p2, "forwards"    # Z

    .prologue
    .line 359
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeFindElementType(JILjava/lang/String;Z)I

    move-result v0

    .line 360
    .local v0, "id":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 363
    :goto_0
    return v1

    .line 362
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 363
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private moveAccessibilityFocusToId(I)Z
    .locals 3
    .param p1, "newAccessibilityFocusId"    # I

    .prologue
    const/4 v0, 0x0

    .line 449
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p1, v1, :cond_0

    .line 468
    :goto_0
    return v0

    .line 451
    :cond_0
    iput p1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 452
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 453
    iput v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    .line 454
    iput v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 455
    iput v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 461
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-ne v0, v1, :cond_1

    .line 462
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetAccessibilityFocus(JI)V

    .line 466
    :goto_1
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const v1, 0x8000

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 468
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    :cond_1
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetAccessibilityFocus(JI)V

    goto :goto_1
.end method

.method private moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V
    .locals 1
    .param p1, "newAccessibilityFocusId"    # I

    .prologue
    .line 475
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p1, v0, :cond_0

    .line 476
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 478
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    .line 482
    return-void
.end method

.method private native nativeAdjustSlider(JIZ)Z
.end method

.method private native nativeBlur(J)V
.end method

.method private native nativeClick(JI)V
.end method

.method private native nativeFindElementType(JILjava/lang/String;Z)I
.end method

.method private native nativeFocus(JI)V
.end method

.method private native nativeGetEditableTextSelectionEnd(JI)I
.end method

.method private native nativeGetEditableTextSelectionStart(JI)I
.end method

.method private native nativeGetRootId(J)I
.end method

.method private native nativeHitTest(JII)V
.end method

.method private native nativeIsEditableText(JI)Z
.end method

.method private native nativeIsNodeValid(JI)Z
.end method

.method private native nativeNextAtGranularity(JIZII)Z
.end method

.method private native nativePopulateAccessibilityEvent(JLandroid/view/accessibility/AccessibilityEvent;II)Z
.end method

.method private native nativePopulateAccessibilityNodeInfo(JLandroid/view/accessibility/AccessibilityNodeInfo;I)Z
.end method

.method private native nativePreviousAtGranularity(JIZII)Z
.end method

.method private native nativeScrollToMakeNodeVisible(JI)V
.end method

.method private native nativeSetAccessibilityFocus(JI)V
.end method

.method private native nativeSetSelection(JIII)V
.end method

.method private native nativeSetTextFieldValue(JILjava/lang/String;)V
.end method

.method private nextAtGranularity(IZ)Z
    .locals 8
    .param p1, "granularity"    # I
    .param p2, "extendSelection"    # Z

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setGranularityAndUpdateSelection(I)V

    .line 383
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    iget v6, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v7, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeNextAtGranularity(JIZII)Z

    move-result v0

    return v0
.end method

.method private onNativeObjectDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getBrowserAccessibilityManager()Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->setBrowserAccessibilityManager(Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;)V

    .line 113
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    .line 114
    iput-object v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    .line 115
    return-void
.end method

.method private previousAtGranularity(IZ)Z
    .locals 8
    .param p1, "granularity"    # I
    .param p2, "extendSelection"    # Z

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->setGranularityAndUpdateSelection(I)V

    .line 390
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    iget v6, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    iget v7, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePreviousAtGranularity(JIZII)Z

    move-result v0

    return v0
.end method

.method private sendAccessibilityEvent(II)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 487
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->buildAccessibilityEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 493
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method private setAccessibilityEventBooleanAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZ)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "checked"    # Z
    .param p3, "enabled"    # Z
    .param p4, "password"    # Z
    .param p5, "scrollable"    # Z

    .prologue
    .line 832
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 833
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 834
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 835
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 836
    return-void
.end method

.method private setAccessibilityEventClassName(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 841
    return-void
.end method

.method private setAccessibilityEventListAttributes(Landroid/view/accessibility/AccessibilityEvent;II)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "currentItemIndex"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 846
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 847
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 848
    return-void
.end method

.method private setAccessibilityEventScrollAttributes(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 0
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "maxScrollX"    # I
    .param p5, "maxScrollY"    # I

    .prologue
    .line 853
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 854
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 855
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 856
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 857
    return-void
.end method

.method private setAccessibilityEventSelectionAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "itemCount"    # I
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 873
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 874
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 875
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    return-void
.end method

.method private setAccessibilityEventTextChangedAttrs(Landroid/view/accessibility/AccessibilityEvent;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "fromIndex"    # I
    .param p3, "addedCount"    # I
    .param p4, "removedCount"    # I
    .param p5, "beforeText"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 862
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 863
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 864
    invoke-virtual {p1, p4}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 865
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 866
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    return-void
.end method

.method private setAccessibilityNodeInfoBooleanAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;IZZZZZZZZZZZZZ)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "virtualViewId"    # I
    .param p3, "canScrollForward"    # Z
    .param p4, "canScrollBackward"    # Z
    .param p5, "checkable"    # Z
    .param p6, "checked"    # Z
    .param p7, "clickable"    # Z
    .param p8, "editableText"    # Z
    .param p9, "enabled"    # Z
    .param p10, "focusable"    # Z
    .param p11, "focused"    # Z
    .param p12, "password"    # Z
    .param p13, "scrollable"    # Z
    .param p14, "selected"    # Z
    .param p15, "visibleToUser"    # Z

    .prologue
    .line 675
    invoke-virtual {p1, p5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 676
    invoke-virtual {p1, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 677
    invoke-virtual {p1, p7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 678
    invoke-virtual {p1, p9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 679
    invoke-virtual {p1, p10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 680
    invoke-virtual {p1, p11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 681
    invoke-virtual {p1, p12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 682
    invoke-virtual {p1, p13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 683
    invoke-virtual {p1, p14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 684
    if-eqz p15, :cond_6

    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 686
    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 687
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 688
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 689
    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 690
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 695
    if-eqz p8, :cond_0

    if-eqz p9, :cond_0

    .line 696
    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 697
    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 700
    :cond_0
    if-eqz p3, :cond_1

    .line 701
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 704
    :cond_1
    if-eqz p4, :cond_2

    .line 705
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 708
    :cond_2
    if-eqz p10, :cond_3

    .line 709
    if-eqz p11, :cond_7

    .line 710
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 716
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v0, p2, :cond_8

    .line 717
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 718
    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 724
    :cond_4
    :goto_2
    if-eqz p7, :cond_5

    .line 725
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 727
    :cond_5
    return-void

    .line 684
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 712
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    .line 719
    :cond_8
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mVisible:Z

    if-eqz v0, :cond_4

    .line 720
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 721
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_2
.end method

.method private setAccessibilityNodeInfoClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 733
    return-void
.end method

.method private setAccessibilityNodeInfoContentDescription(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "annotateAsLink"    # Z

    .prologue
    const/4 v3, 0x0

    .line 738
    if-eqz p3, :cond_0

    .line 739
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 740
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/URLSpan;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 741
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 745
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setAccessibilityNodeInfoLocation(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIIIIZ)V
    .locals 6
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "virtualViewId"    # I
    .param p3, "absoluteLeft"    # I
    .param p4, "absoluteTop"    # I
    .param p5, "parentRelativeLeft"    # I
    .param p6, "parentRelativeTop"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "isRootNode"    # Z

    .prologue
    const/4 v5, 0x0

    .line 753
    new-instance v0, Landroid/graphics/Rect;

    add-int v3, p5, p7

    add-int v4, p6, p8

    invoke-direct {v0, p5, p6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 755
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    if-eqz p9, :cond_0

    .line 757
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 759
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 762
    new-instance v1, Landroid/graphics/Rect;

    add-int v3, p3, p7

    add-int v4, p4, p8

    invoke-direct {v1, p3, p4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 765
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->getScrollX()F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v4}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->getScrollY()F

    move-result v4

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 769
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 770
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 771
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 772
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 775
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v3}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 779
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 780
    .local v2, "viewLocation":[I
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 781
    aget v3, v2, v5

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 783
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 790
    iget v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne p2, v3, :cond_1

    iget v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mCurrentRootId:I

    if-eq p2, v3, :cond_1

    .line 791
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    if-nez v3, :cond_2

    .line 792
    iput-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 798
    :cond_1
    :goto_0
    return-void

    .line 793
    :cond_2
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 794
    iput-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 795
    invoke-direct {p0, p2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method private setAccessibilityNodeInfoParent(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 1
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "parentId"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 662
    return-void
.end method

.method private setGranularityAndUpdateSelection(I)V
    .locals 3
    .param p1, "granularity"    # I

    .prologue
    const/4 v1, -0x1

    .line 367
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    if-nez v0, :cond_0

    .line 368
    iput v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 369
    iput v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 371
    :cond_0
    iput p1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionGranularity:I

    .line 372
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetEditableTextSelectionStart(JI)I

    move-result v0

    iput v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionStartIndex:I

    .line 375
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetEditableTextSelectionEnd(JI)I

    move-result v0

    iput v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mSelectionEndIndex:I

    .line 378
    :cond_1
    return-void
.end method


# virtual methods
.method protected createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 169
    :cond_1
    :goto_0
    return-object v0

    .line 147
    :cond_2
    iget-wide v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v4, v5}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeGetRootId(J)I

    move-result v1

    .line 149
    .local v1, "rootId":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_3

    .line 150
    invoke-direct {p0, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->createNodeForHost(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_3
    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isFrameInfoInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v0, v2

    .line 154
    goto :goto_0

    .line 157
    :cond_4
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 158
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 161
    if-ne p1, v1, :cond_5

    .line 162
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 165
    :cond_5
    iget-wide v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v4, v5, v0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativePopulateAccessibilityNodeInfo(JLandroid/view/accessibility/AccessibilityNodeInfo;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    move-object v0, v2

    .line 169
    goto :goto_0
.end method

.method protected findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyFrameInfoInitialized()V
    .locals 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNotifyFrameInfoInitializedCalled:Z

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNotifyFrameInfoInitializedCalled:Z

    .line 349
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mView:Landroid/view/ViewGroup;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 353
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 354
    iget v0, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v0}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToIdAndRefocusIfNeeded(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 308
    iget-object v6, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 334
    :goto_0
    return v4

    .line 312
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    .line 313
    iput-boolean v5, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 314
    iget-boolean v6, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    if-eqz v6, :cond_2

    .line 315
    iget-wide v6, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v8, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 318
    :cond_2
    iput-boolean v5, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    goto :goto_0

    .line 322
    :cond_3
    iput-boolean v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    .line 323
    iput-boolean v4, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mUserHasTouchExplored:Z

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 325
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 328
    .local v3, "y":F
    iget-object v5, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5, v2}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v5

    float-to-int v0, v5

    .line 329
    .local v0, "cssX":I
    iget-object v5, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mRenderCoordinates:Lcom/android/org/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v5, v3}, Lcom/android/org/chromium/content/browser/RenderCoordinates;->fromPixToLocalCss(F)F

    move-result v5

    float-to-int v1, v5

    .line 333
    .local v1, "cssY":I
    iget-wide v6, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeHitTest(JII)V

    goto :goto_0
.end method

.method protected performAction(IILandroid/os/Bundle;)Z
    .locals 12
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsNodeValid(JI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    const/4 v1, 0x0

    .line 301
    :goto_0
    return v1

    .line 202
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 301
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->moveAccessibilityFocusToId(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 206
    :cond_2
    iget-boolean v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mIsHovering:Z

    if-nez v1, :cond_3

    .line 207
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeScrollToMakeNodeVisible(JI)V

    .line 212
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 210
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mPendingScrollToMakeNodeVisible:Z

    goto :goto_1

    .line 214
    :sswitch_1
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    if-ne v1, p1, :cond_4

    .line 215
    iget v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    const/high16 v2, 0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 217
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusId:I

    .line 218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mAccessibilityFocusRect:Landroid/graphics/Rect;

    .line 220
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 222
    :sswitch_2
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeClick(JI)V

    .line 223
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->sendAccessibilityEvent(II)V

    .line 225
    const/4 v1, 0x1

    goto :goto_0

    .line 227
    :sswitch_3
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeFocus(JI)V

    .line 228
    const/4 v1, 0x1

    goto :goto_0

    .line 230
    :sswitch_4
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeBlur(J)V

    .line 231
    const/4 v1, 0x1

    goto :goto_0

    .line 233
    :sswitch_5
    if-nez p3, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    .line 234
    :cond_5
    const-string v1, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "elementType":Ljava/lang/String;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_0

    .line 237
    :cond_6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->jumpToElementType(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 241
    .end local v0    # "elementType":Ljava/lang/String;
    :sswitch_6
    if-nez p3, :cond_7

    const/4 v1, 0x0

    goto :goto_0

    .line 242
    :cond_7
    const-string v1, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .restart local v0    # "elementType":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_0

    .line 245
    :cond_8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->jumpToElementType(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 249
    .end local v0    # "elementType":Ljava/lang/String;
    :sswitch_7
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 250
    :cond_9
    if-nez p3, :cond_a

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 251
    :cond_a
    const-string v1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "newText":Ljava/lang/String;
    if-nez v9, :cond_b

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 254
    :cond_b
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1, v9}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetTextFieldValue(JILjava/lang/String;)V

    .line 256
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 257
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 260
    .end local v9    # "newText":Ljava/lang/String;
    :sswitch_8
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeIsEditableText(JI)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 261
    :cond_c
    const/4 v5, 0x0

    .line 262
    .local v5, "selectionStart":I
    const/4 v6, 0x0

    .line 263
    .local v6, "selectionEnd":I
    if-eqz p3, :cond_d

    .line 264
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 266
    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 269
    :cond_d
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeSetSelection(JIII)V

    .line 270
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 273
    .end local v5    # "selectionStart":I
    .end local v6    # "selectionEnd":I
    :sswitch_9
    if-nez p3, :cond_e

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 274
    :cond_e
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 276
    .local v8, "granularity":I
    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 278
    .local v7, "extend":Z
    invoke-static {v8}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isValidMovementGranularity(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 279
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 281
    :cond_f
    invoke-direct {p0, v8, v7}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nextAtGranularity(IZ)Z

    move-result v1

    goto/16 :goto_0

    .line 284
    .end local v7    # "extend":Z
    .end local v8    # "granularity":I
    :sswitch_a
    if-nez p3, :cond_10

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 285
    :cond_10
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 287
    .restart local v8    # "granularity":I
    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 289
    .restart local v7    # "extend":Z
    invoke-static {v8}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->isValidMovementGranularity(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 290
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 292
    :cond_11
    invoke-direct {p0, v8, v7}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->previousAtGranularity(IZ)Z

    move-result v1

    goto/16 :goto_0

    .line 295
    .end local v7    # "extend":Z
    .end local v8    # "granularity":I
    :sswitch_b
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeAdjustSlider(JIZ)Z

    move-result v1

    goto/16 :goto_0

    .line 297
    :sswitch_c
    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mNativeObj:J

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->nativeAdjustSlider(JIZ)Z

    move-result v1

    goto/16 :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x10 -> :sswitch_2
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_9
        0x200 -> :sswitch_a
        0x400 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_c
        0x20000 -> :sswitch_8
        0x200000 -> :sswitch_7
    .end sparse-switch
.end method

.method protected setAccessibilityEventCollectionInfo(Landroid/view/accessibility/AccessibilityEvent;IIZ)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "hierarchical"    # Z

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 901
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.rowCount"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 902
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.columnCount"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 903
    const-string v1, "AccessibilityNodeInfo.CollectionInfo.hierarchical"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 904
    return-void
.end method

.method protected setAccessibilityEventCollectionItemInfo(Landroid/view/accessibility/AccessibilityEvent;IIII)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I

    .prologue
    .line 918
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 919
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.rowIndex"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 920
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.rowSpan"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 921
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.columnIndex"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 922
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.columnSpan"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    return-void
.end method

.method protected setAccessibilityEventHeadingFlag(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "heading"    # Z

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 911
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.CollectionItemInfo.heading"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 912
    return-void
.end method

.method protected setAccessibilityEventKitKatAttributes(Landroid/view/accessibility/AccessibilityEvent;ZZZZII)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "canOpenPopup"    # Z
    .param p3, "contentInvalid"    # Z
    .param p4, "dismissable"    # Z
    .param p5, "multiLine"    # Z
    .param p6, "inputType"    # I
    .param p7, "liveRegion"    # I

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 888
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.canOpenPopup"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 889
    const-string v1, "AccessibilityNodeInfo.contentInvalid"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 890
    const-string v1, "AccessibilityNodeInfo.dismissable"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 891
    const-string v1, "AccessibilityNodeInfo.multiLine"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 892
    const-string v1, "AccessibilityNodeInfo.inputType"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 893
    const-string v1, "AccessibilityNodeInfo.liveRegion"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 894
    return-void
.end method

.method protected setAccessibilityEventRangeInfo(Landroid/view/accessibility/AccessibilityEvent;IFFF)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "rangeType"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "current"    # F

    .prologue
    .line 929
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->getOrCreateBundleForAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 930
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "AccessibilityNodeInfo.RangeInfo.type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 931
    const-string v1, "AccessibilityNodeInfo.RangeInfo.min"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 932
    const-string v1, "AccessibilityNodeInfo.RangeInfo.max"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 933
    const-string v1, "AccessibilityNodeInfo.RangeInfo.current"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 934
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIZ)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "hierarchical"    # Z

    .prologue
    .line 815
    return-void
.end method

.method protected setAccessibilityNodeInfoCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIIIZ)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rowIndex"    # I
    .param p3, "rowSpan"    # I
    .param p4, "columnIndex"    # I
    .param p5, "columnSpan"    # I
    .param p6, "heading"    # Z

    .prologue
    .line 821
    return-void
.end method

.method protected setAccessibilityNodeInfoKitKatAttributes(Landroid/view/accessibility/AccessibilityNodeInfo;ZZZZII)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "canOpenPopup"    # Z
    .param p3, "contentInvalid"    # Z
    .param p4, "dismissable"    # Z
    .param p5, "multiLine"    # Z
    .param p6, "inputType"    # I
    .param p7, "liveRegion"    # I

    .prologue
    .line 809
    return-void
.end method

.method protected setAccessibilityNodeInfoRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IFFF)V
    .locals 0
    .param p1, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "rangeType"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "current"    # F

    .prologue
    .line 827
    return-void
.end method

.method shouldExposePasswordText()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 938
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/accessibility/BrowserAccessibilityManager;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "speak_password"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
