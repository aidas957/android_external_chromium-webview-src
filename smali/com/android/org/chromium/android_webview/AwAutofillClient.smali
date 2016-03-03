.class public Lcom/android/org/chromium/android_webview/AwAutofillClient;
.super Ljava/lang/Object;
.source "AwAutofillClient.java"


# instance fields
.field private mAutofillPopup:Lcom/android/org/chromium/ui/autofill/AutofillPopup;

.field private mContainerView:Landroid/view/ViewGroup;

.field private mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

.field private final mNativeAwAutofillClient:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeAwAutofillClient"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mNativeAwAutofillClient:J

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/android_webview/AwAutofillClient;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwAutofillClient;

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mNativeAwAutofillClient:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/org/chromium/android_webview/AwAutofillClient;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/AwAutofillClient;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwAutofillClient;->nativeSuggestionSelected(JI)V

    return-void
.end method

.method private static addToAutofillSuggestionArray([Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "array"    # [Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "uniqueId"    # I

    .prologue
    .line 88
    new-instance v0, Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1, p4}, Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, p0, p1

    .line 89
    return-void
.end method

.method public static create(J)Lcom/android/org/chromium/android_webview/AwAutofillClient;
    .locals 2
    .param p0, "nativeClient"    # J

    .prologue
    .line 30
    new-instance v0, Lcom/android/org/chromium/android_webview/AwAutofillClient;

    invoke-direct {v0, p0, p1}, Lcom/android/org/chromium/android_webview/AwAutofillClient;-><init>(J)V

    return-object v0
.end method

.method private static createAutofillSuggestionArray(I)[Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 75
    new-array v0, p0, [Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;

    return-object v0
.end method

.method private native nativeSuggestionSelected(JI)V
.end method

.method private showAutofillPopup(FFFFZ[Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "isRtl"    # Z
    .param p6, "suggestions"    # [Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mAutofillPopup:Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    invoke-virtual {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getViewAndroidDelegate()Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v2

    new-instance v3, Lcom/android/org/chromium/android_webview/AwAutofillClient$1;

    invoke-direct {v3, p0}, Lcom/android/org/chromium/android_webview/AwAutofillClient$1;-><init>(Lcom/android/org/chromium/android_webview/AwAutofillClient;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/base/ViewAndroidDelegate;Lcom/android/org/chromium/ui/autofill/AutofillPopup$AutofillPopupDelegate;)V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mAutofillPopup:Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mAutofillPopup:Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->setAnchorRect(FFFF)V

    .line 62
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mAutofillPopup:Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0, p6, p5}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->filterAndShow([Lcom/android/org/chromium/ui/autofill/AutofillSuggestion;Z)V

    goto :goto_0
.end method


# virtual methods
.method public hideAutofillPopup()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mAutofillPopup:Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mAutofillPopup:Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0}, Lcom/android/org/chromium/ui/autofill/AutofillPopup;->hide()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mAutofillPopup:Lcom/android/org/chromium/ui/autofill/AutofillPopup;

    goto :goto_0
.end method

.method public init(Lcom/android/org/chromium/content/browser/ContentViewCore;)V
    .locals 1
    .param p1, "contentViewCore"    # Lcom/android/org/chromium/content/browser/ContentViewCore;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mContentViewCore:Lcom/android/org/chromium/content/browser/ContentViewCore;

    .line 39
    invoke-virtual {p1}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/AwAutofillClient;->mContainerView:Landroid/view/ViewGroup;

    .line 40
    return-void
.end method
