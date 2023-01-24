.class public interface abstract Lzui/widget/IKeyboardViewX;
.super Ljava/lang/Object;
.source "IKeyboardViewX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;,
        Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;,
        Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;,
        Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;,
        Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;
    }
.end annotation


# virtual methods
.method public abstract hideKeyboard()V
.end method

.method public abstract onEditTextChanged(Ljava/lang/CharSequence;)V
.end method

.method public abstract setBindEditText(Landroid/widget/EditText;)V
.end method

.method public abstract setEditTextMaxLength(I)V
.end method

.method public abstract setEditTextMinLength(I)V
.end method

.method public abstract setOnKeyCharPressListener(Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;)V
.end method

.method public abstract setOnKeyDeletePressListener(Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;)V
.end method

.method public abstract setOnKeyDonePressListener(Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;)V
.end method

.method public abstract setOnKeyPressHapticFeedbackListener(Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;)V
.end method

.method public abstract setOnKeyPressPlaySoundEffectListener(Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;)V
.end method

.method public abstract showKeyboard()V
.end method

.method public abstract updateKeyboardViewStatus()V
.end method
