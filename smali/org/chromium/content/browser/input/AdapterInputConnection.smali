.class public Lorg/chromium/content/browser/input/AdapterInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "AdapterInputConnection.java"


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private final mInternalView:Landroid/view/View;

.field private mLastUpdateCompositionEnd:I

.field private mLastUpdateCompositionStart:I

.field private mLastUpdateSelectionEnd:I

.field private mLastUpdateSelectionStart:I

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private mSingleLine:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const v5, 0x8000

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 54
    invoke-direct {p0, p1, v3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 43
    iput v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 46
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 47
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 48
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    .line 49
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    .line 55
    iput-object p1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    .line 56
    iput-object p2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 57
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, p0}, Lorg/chromium/content/browser/input/ImeAdapter;->setInputConnection(Lorg/chromium/content/browser/input/AdapterInputConnection;)V

    .line 58
    iput-object p3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    .line 62
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 63
    iput-boolean v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    .line 64
    const/high16 v2, 0x12000000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 66
    const/16 v2, 0xa1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 69
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v1

    .line 70
    .local v1, "inputType":I
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputFlags()I

    move-result v0

    .line 71
    .local v0, "inputFlags":I
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputFlagAutocompleteOff:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 72
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 75
    :cond_0
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeText:I

    if-ne v1, v2, :cond_2

    .line 77
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 78
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputFlagAutocorrectOff:I

    and-int/2addr v2, v0

    if-nez v2, :cond_1

    .line 79
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/2addr v2, v5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 122
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 123
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 124
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 125
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 127
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    iget v3, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v4, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 128
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 129
    return-void

    .line 81
    :cond_2
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeTextArea:I

    if-eq v1, v2, :cond_3

    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeContentEditable:I

    if-ne v1, v2, :cond_5

    .line 84
    :cond_3
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0x24000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 86
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputFlagAutocorrectOff:I

    and-int/2addr v2, v0

    if-nez v2, :cond_4

    .line 87
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/2addr v2, v5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 89
    :cond_4
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 90
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    goto :goto_0

    .line 91
    :cond_5
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypePassword:I

    if-ne v1, v2, :cond_6

    .line 93
    const/16 v2, 0xe1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 95
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 96
    :cond_6
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeSearch:I

    if-ne v1, v2, :cond_7

    .line 98
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 99
    :cond_7
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeUrl:I

    if-ne v1, v2, :cond_8

    .line 101
    const/16 v2, 0x11

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 103
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 104
    :cond_8
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeEmail:I

    if-ne v1, v2, :cond_9

    .line 106
    const/16 v2, 0xd1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 108
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 109
    :cond_9
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeTel:I

    if-ne v1, v2, :cond_a

    .line 113
    const/4 v2, 0x3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 114
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 115
    :cond_a
    sget v2, Lorg/chromium/content/browser/input/ImeAdapter;->sTextInputTypeNumber:I

    if-ne v1, v2, :cond_1

    .line 117
    const/16 v2, 0x2002

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 120
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0
.end method

.method private getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static maybeAddAccentToCharacter(II)I
    .locals 1
    .param p0, "accentChar"    # I
    .param p1, "unicodeChar"    # I

    .prologue
    .line 132
    if-eqz p0, :cond_0

    .line 133
    invoke-static {p0, p1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    .line 134
    .local v0, "combinedChar":I
    if-eqz v0, :cond_0

    .line 138
    .end local v0    # "combinedChar":I
    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method private maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x1

    .line 557
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 558
    .local v4, "selectionStart":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 559
    .local v3, "selectionEnd":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 560
    .local v1, "compositionStart":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 561
    .local v0, "compositionEnd":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v4, v3, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v0, v6, :cond_0

    .line 564
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->beginBatchEdit()Z

    .line 565
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 566
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 567
    .local v2, "selection":I
    sub-int v5, v2, v1

    sub-int v6, v2, v0

    invoke-virtual {p0, v5, v6}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingText(II)Z

    .line 568
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->endBatchEdit()Z

    .line 569
    const/4 v5, 0x1

    .line 571
    .end local v2    # "selection":I
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private updateSelectionIfRequired()V
    .locals 6

    .prologue
    .line 207
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 209
    .local v2, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 210
    .local v3, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 211
    .local v4, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 213
    .local v5, "compositionEnd":I
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    if-eq v0, v5, :cond_0

    .line 225
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateSelection(Landroid/view/View;IIII)V

    .line 227
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 228
    iput v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 229
    iput v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    .line 230
    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    :goto_0
    return v0

    .line 254
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 255
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 256
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    invoke-virtual {v1, p1, p2, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deleteSurroundingText(II)Z
    .locals 12
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 346
    move v10, p1

    .line 347
    .local v10, "originalBeforeLength":I
    move v9, p2

    .line 348
    .local v9, "originalAfterLength":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v8

    .line 349
    .local v8, "availableBefore":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int v7, v0, v1

    .line 350
    .local v7, "availableAfter":I
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 351
    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 352
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 353
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 358
    const/4 v4, 0x0

    .line 359
    .local v4, "keyCode":I
    if-ne v10, v2, :cond_1

    if-nez v9, :cond_1

    .line 360
    const/16 v4, 0x43

    .line 364
    :cond_0
    :goto_0
    const/4 v11, 0x1

    .line 365
    .local v11, "result":Z
    if-nez v4, :cond_2

    .line 366
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeRawKeyDown:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    move-result v11

    .line 368
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    move-result v0

    and-int/2addr v11, v0

    .line 369
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeKeyUp:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    move-result v0

    and-int/2addr v11, v0

    .line 375
    :goto_1
    return v11

    .line 361
    .end local v11    # "result":Z
    :cond_1
    if-nez v10, :cond_0

    if-ne v9, v2, :cond_0

    .line 362
    const/16 v4, 0x70

    goto :goto_0

    .line 372
    .restart local v11    # "result":Z
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x6

    invoke-virtual {v0, v4, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_1
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 331
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 334
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 335
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 476
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 484
    :goto_0
    return v2

    .line 480
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 481
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 482
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->finishComposingText()V

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 307
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 308
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 309
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 310
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 311
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 312
    iget-boolean v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 313
    return-object v0

    .line 312
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 286
    packed-switch p1, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 288
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->selectAll()Z

    move-result v0

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->cut()Z

    move-result v0

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->copy()Z

    move-result v0

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->paste()Z

    move-result v0

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 7
    .param p1, "actionCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 266
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 270
    .local v2, "timeStampMs":J
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    sget v1, Lorg/chromium/content/browser/input/ImeAdapter;->sEventTypeRawKeyDown:I

    const/16 v4, 0x3d

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    .line 277
    .end local v2    # "timeStampMs":J
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v1, 0x42

    const/16 v4, 0x16

    invoke-virtual {v0, v1, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_0
.end method

.method restartInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 506
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 507
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 508
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 509
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x70

    const/16 v11, 0x43

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 388
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-static {v8}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 389
    iget-object v7, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v7, p1, v10}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    move-result v7

    .line 467
    :cond_0
    :goto_0
    return v7

    .line 392
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    .line 397
    .local v6, "unicodeChar":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_7

    .line 398
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 399
    invoke-virtual {p0, v7, v10}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 402
    invoke-virtual {p0, v10, v7}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 404
    :cond_3
    if-eqz v6, :cond_5

    .line 405
    iget-object v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v8}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 406
    .local v4, "selectionStart":I
    iget-object v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v8}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 407
    .local v3, "selectionEnd":I
    if-le v4, v3, :cond_4

    .line 408
    move v5, v4

    .line 409
    .local v5, "temp":I
    move v4, v3

    .line 410
    move v3, v5

    .line 412
    .end local v5    # "temp":I
    :cond_4
    iget v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    invoke-static {v8, v6}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybeAddAccentToCharacter(II)I

    move-result v1

    .line 413
    .local v1, "combinedChar":I
    iget-object v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v4, v3, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 430
    .end local v1    # "combinedChar":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "selectionStart":I
    :cond_5
    iget-object v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    iget v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    invoke-virtual {v8, p1, v9}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    .line 440
    iget v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 442
    .local v2, "pendingAccent":I
    const/high16 v8, -0x80000000

    and-int/2addr v8, v6

    if-eqz v8, :cond_9

    .line 443
    const v8, 0x7fffffff

    and-int v2, v6, v8

    .line 466
    :cond_6
    :goto_1
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    goto :goto_0

    .line 416
    .end local v2    # "pendingAccent":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    .line 418
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v9, 0x42

    if-ne v8, v9, :cond_8

    .line 419
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->beginBatchEdit()Z

    .line 420
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 421
    iget-object v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v8, p1, v10}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;I)Z

    .line 422
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 424
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-eq v8, v11, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    if-ne v8, v12, :cond_5

    goto/16 :goto_0

    .line 444
    .restart local v2    # "pendingAccent":I
    :cond_9
    if-eqz v2, :cond_6

    .line 445
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_a

    .line 446
    invoke-static {v2, v6}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    .line 447
    .local v0, "combined":I
    if-eqz v0, :cond_b

    .line 451
    invoke-super {p0, v7, v10}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 452
    iget-object v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v8, v7, v10}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    .line 460
    .end local v0    # "combined":I
    :cond_a
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_6

    .line 462
    const/4 v2, 0x0

    goto :goto_1

    .line 456
    .restart local v0    # "combined":I
    :cond_b
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public setComposingRegion(II)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 517
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v3

    .line 518
    .local v3, "textLength":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 519
    .local v0, "a":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 520
    .local v1, "b":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 521
    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 522
    :cond_1
    if-le v0, v3, :cond_2

    move v0, v3

    .line 523
    :cond_2
    if-le v1, v3, :cond_3

    move v1, v3

    .line 525
    :cond_3
    if-ne v0, v1, :cond_5

    .line 526
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v4}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 530
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "regionText":Ljava/lang/CharSequence;
    if-le v1, v0, :cond_4

    .line 534
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 536
    :cond_4
    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(Ljava/lang/CharSequence;II)Z

    move-result v4

    return v4

    .line 528
    .end local v2    # "regionText":Ljava/lang/CharSequence;
    :cond_5
    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 243
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 244
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 493
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 494
    .local v0, "textLength":I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 497
    :goto_0
    return v1

    .line 495
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    .line 496
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 497
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->setEditableSelectionOffsets(II)Z

    move-result v1

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;IIIIZ)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "isNonImeChange"    # Z

    .prologue
    .line 167
    if-nez p6, :cond_0

    .line 192
    :goto_0
    return-void

    .line 170
    :cond_0
    const/16 v2, 0xa0

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 177
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "prevText":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 180
    .local v1, "textUnchanged":Z
    if-nez v1, :cond_1

    .line 181
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 184
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 186
    if-ne p4, p5, :cond_2

    .line 187
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 191
    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    goto :goto_0

    .line 189
    :cond_2
    invoke-super {p0, p4, p5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_1
.end method
