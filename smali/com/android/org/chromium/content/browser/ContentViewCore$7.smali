.class Lcom/android/org/chromium/content/browser/ContentViewCore$7;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lcom/android/org/chromium/content/browser/SelectActionModeCallback$ActionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/content/browser/ContentViewCore;->showSelectActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 1922
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()V
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mImeAdapter:Lcom/android/org/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2100(Lcom/android/org/chromium/content/browser/ContentViewCore;)Lcom/android/org/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/input/ImeAdapter;->copy()Z

    .line 1936
    return-void
.end method

.method public cut()V
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mImeAdapter:Lcom/android/org/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2100(Lcom/android/org/chromium/content/browser/ContentViewCore;)Lcom/android/org/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/input/ImeAdapter;->cut()Z

    .line 1931
    return-void
.end method

.method public isSelectionEditable()Z
    .locals 1

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$800(Lcom/android/org/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    return v0
.end method

.method public isSelectionPassword()Z
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mImeAdapter:Lcom/android/org/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2100(Lcom/android/org/chromium/content/browser/ContentViewCore;)Lcom/android/org/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/input/ImeAdapter;->isSelectionPassword()Z

    move-result v0

    return v0
.end method

.method public isShareAvailable()Z
    .locals 3

    .prologue
    .line 2008
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2009
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2010
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWebSearchAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2016
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContentViewClient()Lcom/android/org/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewClient;->doesPerformWebSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2019
    :cond_0
    :goto_0
    return v1

    .line 2017
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2018
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "new_search"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2019
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroyActionMode()V
    .locals 2

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    # setter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2202(Lcom/android/org/chromium/content/browser/ContentViewCore;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1999
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mUnselectAllOnActionModeDismiss:Z
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2300(Lcom/android/org/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # invokes: Lcom/android/org/chromium/content/browser/ContentViewCore;->dismissTextHandles()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$900(Lcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 2001
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # invokes: Lcom/android/org/chromium/content/browser/ContentViewCore;->clearUserSelection()V
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2400(Lcom/android/org/chromium/content/browser/ContentViewCore;)V

    .line 2003
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContentViewClient()Lcom/android/org/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentViewClient;->onContextualActionBarHidden()V

    .line 2004
    return-void
.end method

.method public paste()V
    .locals 1

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mImeAdapter:Lcom/android/org/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2100(Lcom/android/org/chromium/content/browser/ContentViewCore;)Lcom/android/org/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/input/ImeAdapter;->paste()Z

    .line 1941
    return-void
.end method

.method public search()V
    .locals 4

    .prologue
    .line 1963
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1964
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1984
    :goto_0
    return-void

    .line 1967
    :cond_0
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContentViewClient()Lcom/android/org/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewClient;->doesPerformWebSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1968
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContentViewClient()Lcom/android/org/chromium/content/browser/ContentViewClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/org/chromium/content/browser/ContentViewClient;->performWebSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 1972
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1973
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "new_search"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1974
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1975
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1976
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1977
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1980
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1981
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    # getter for: Lcom/android/org/chromium/content/browser/ContentViewCore;->mImeAdapter:Lcom/android/org/chromium/content/browser/input/ImeAdapter;
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->access$2100(Lcom/android/org/chromium/content/browser/ContentViewCore;)Lcom/android/org/chromium/content/browser/input/ImeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/input/ImeAdapter;->selectAll()Z

    .line 1926
    return-void
.end method

.method public share()V
    .locals 5

    .prologue
    .line 1945
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1946
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1959
    :goto_0
    return-void

    .line 1948
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1949
    .local v2, "send":Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1950
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1952
    :try_start_0
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/org/chromium/content/R$string;->actionbar_share:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1954
    .local v0, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1955
    iget-object v3, p0, Lcom/android/org/chromium/content/browser/ContentViewCore$7;->this$0:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v3}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1956
    .end local v0    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
