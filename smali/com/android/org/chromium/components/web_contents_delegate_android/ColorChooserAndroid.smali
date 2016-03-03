.class public Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
.super Ljava/lang/Object;
.source "ColorChooserAndroid.java"


# instance fields
.field private final mDialog:Lcom/android/org/chromium/ui/ColorPickerDialog;

.field private final mNativeColorChooserAndroid:J


# direct methods
.method private constructor <init>(JLandroid/content/Context;I[Lcom/android/org/chromium/ui/ColorSuggestion;)V
    .locals 3
    .param p1, "nativeColorChooserAndroid"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "initialColor"    # I
    .param p5, "suggestions"    # [Lcom/android/org/chromium/ui/ColorSuggestion;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid$1;-><init>(Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)V

    .line 36
    .local v0, "listener":Lcom/android/org/chromium/ui/OnColorChangedListener;
    iput-wide p1, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mNativeColorChooserAndroid:J

    .line 37
    new-instance v1, Lcom/android/org/chromium/ui/ColorPickerDialog;

    invoke-direct {v1, p3, v0, p4, p5}, Lcom/android/org/chromium/ui/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/OnColorChangedListener;I[Lcom/android/org/chromium/ui/ColorSuggestion;)V

    iput-object v1, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lcom/android/org/chromium/ui/ColorPickerDialog;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)Lcom/android/org/chromium/ui/ColorPickerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lcom/android/org/chromium/ui/ColorPickerDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mNativeColorChooserAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->nativeOnColorChosen(JI)V

    return-void
.end method

.method private static addToColorSuggestionArray([Lcom/android/org/chromium/ui/ColorSuggestion;IILjava/lang/String;)V
    .locals 1
    .param p0, "array"    # [Lcom/android/org/chromium/ui/ColorSuggestion;
    .param p1, "index"    # I
    .param p2, "color"    # I
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/android/org/chromium/ui/ColorSuggestion;

    invoke-direct {v0, p2, p3}, Lcom/android/org/chromium/ui/ColorSuggestion;-><init>(ILjava/lang/String;)V

    aput-object v0, p0, p1

    .line 78
    return-void
.end method

.method public static createColorChooserAndroid(JLcom/android/org/chromium/ui/base/WindowAndroid;I[Lcom/android/org/chromium/ui/ColorSuggestion;)Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
    .locals 8
    .param p0, "nativeColorChooserAndroid"    # J
    .param p2, "windowAndroid"    # Lcom/android/org/chromium/ui/base/WindowAndroid;
    .param p3, "initialColor"    # I
    .param p4, "suggestions"    # [Lcom/android/org/chromium/ui/ColorSuggestion;

    .prologue
    .line 55
    invoke-virtual {p2}, Lcom/android/org/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 56
    .local v4, "windowAndroidActivity":Landroid/app/Activity;
    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    .line 57
    :cond_0
    new-instance v1, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;

    move-wide v2, p0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;-><init>(JLandroid/content/Context;I[Lcom/android/org/chromium/ui/ColorSuggestion;)V

    .line 59
    .local v1, "chooser":Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;
    invoke-direct {v1}, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->openColorChooser()V

    goto :goto_0
.end method

.method private static createColorSuggestionArray(I)[Lcom/android/org/chromium/ui/ColorSuggestion;
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 65
    new-array v0, p0, [Lcom/android/org/chromium/ui/ColorSuggestion;

    return-object v0
.end method

.method private native nativeOnColorChosen(JI)V
.end method

.method private openColorChooser()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lcom/android/org/chromium/ui/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/org/chromium/ui/ColorPickerDialog;->show()V

    .line 42
    return-void
.end method


# virtual methods
.method public closeColorChooser()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/org/chromium/components/web_contents_delegate_android/ColorChooserAndroid;->mDialog:Lcom/android/org/chromium/ui/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/android/org/chromium/ui/ColorPickerDialog;->dismiss()V

    .line 47
    return-void
.end method
