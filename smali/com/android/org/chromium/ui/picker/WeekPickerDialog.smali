.class public Lcom/android/org/chromium/ui/picker/WeekPickerDialog;
.super Lcom/android/org/chromium/ui/picker/TwoFieldDatePickerDialog;
.source "WeekPickerDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/org/chromium/ui/picker/TwoFieldDatePickerDialog$OnValueSetListener;IIDD)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/android/org/chromium/ui/picker/TwoFieldDatePickerDialog$OnValueSetListener;
    .param p4, "year"    # I
    .param p5, "weekOfYear"    # I
    .param p6, "minValue"    # D
    .param p8, "maxValue"    # D

    .prologue
    .line 39
    invoke-direct/range {p0 .. p9}, Lcom/android/org/chromium/ui/picker/TwoFieldDatePickerDialog;-><init>(Landroid/content/Context;ILcom/android/org/chromium/ui/picker/TwoFieldDatePickerDialog$OnValueSetListener;IIDD)V

    .line 40
    sget v0, Lcom/android/org/chromium/ui/R$string;->week_picker_dialog_title:I

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/ui/picker/WeekPickerDialog;->setTitle(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/org/chromium/ui/picker/TwoFieldDatePickerDialog$OnValueSetListener;IIDD)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/android/org/chromium/ui/picker/TwoFieldDatePickerDialog$OnValueSetListener;
    .param p3, "year"    # I
    .param p4, "weekOfYear"    # I
    .param p5, "minValue"    # D
    .param p7, "maxValue"    # D

    .prologue
    .line 23
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/org/chromium/ui/picker/WeekPickerDialog;-><init>(Landroid/content/Context;ILcom/android/org/chromium/ui/picker/TwoFieldDatePickerDialog$OnValueSetListener;IIDD)V

    .line 24
    return-void
.end method


# virtual methods
.method protected createPicker(Landroid/content/Context;DD)Lcom/android/org/chromium/ui/picker/TwoFieldDatePicker;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D

    .prologue
    .line 45
    new-instance v0, Lcom/android/org/chromium/ui/picker/WeekPicker;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/org/chromium/ui/picker/WeekPicker;-><init>(Landroid/content/Context;DD)V

    return-object v0
.end method
