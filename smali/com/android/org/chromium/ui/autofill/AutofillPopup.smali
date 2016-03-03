.class public Lcom/android/org/chromium/ui/autofill/AutofillPopup;
.super Lcom/android/org/chromium/ui/DropdownPopupWindow;
.source "AutofillPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAutofillCallback:Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;

.field private final mContext:Landroid/content/Context;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewAndroidDelegate"    # Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;
    .param p3, "autofillCallback"    # Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;)V

    .line 65
    iput-object p1, p0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->mAutofillCallback:Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;

    .line 68
    invoke-virtual {p0, p0}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    invoke-virtual {p0, p0}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public filterAndShow([Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;Z)V
    .locals 6
    .param p1, "suggestions"    # [Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;
    .param p2, "isRtl"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "cleanedData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/org/chromium/ui/DropdownItem;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 82
    .local v3, "separators":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 83
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;->getSuggestionId()I

    move-result v2

    .line 84
    .local v2, "itemId":I
    const/4 v4, -0x3

    if-ne v2, v4, :cond_0

    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v2    # "itemId":I
    :cond_1
    new-instance v4, Lcom/android/org/chromium/ui/DropdownAdapter;

    iget-object v5, p0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v0, v3}, Lcom/android/org/chromium/ui/DropdownAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p0, v4}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->setRtl(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->show()V

    .line 94
    return-void
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->dismiss()V

    .line 101
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->mAutofillCallback:Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;

    invoke-interface {v0}, Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;->dismissed()V

    .line 114
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/org/chromium/ui/DropdownAdapter;

    .line 106
    .local v0, "adapter":Lcom/android/org/chromium/ui/DropdownAdapter;
    iget-object v2, p0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    invoke-virtual {v0, p3}, Lcom/android/org/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 107
    .local v1, "listIndex":I
    sget-boolean v2, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-gt v1, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->mAutofillCallback:Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;

    invoke-interface {v2, v1}, Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;->suggestionSelected(I)V

    .line 109
    return-void
.end method
