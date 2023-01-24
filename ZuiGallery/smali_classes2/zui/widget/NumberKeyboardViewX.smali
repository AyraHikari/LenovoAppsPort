.class public Lzui/widget/NumberKeyboardViewX;
.super Landroid/widget/RelativeLayout;
.source "NumberKeyboardViewX.java"

# interfaces
.implements Lzui/widget/IKeyboardViewX;


# static fields
.field private static final TAG:Ljava/lang/String; = "NumberKeyboardView"

.field private static final mNumberKeyboardButtonViewIds:[I


# instance fields
.field private mBindEditText:Landroid/widget/EditText;

.field private mBtnNumberDelete:Landroid/widget/ImageButton;

.field private mBtnNumberDone:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEditTextMaxLength:I

.field private mEditTextMinLength:I

.field private final mNumberKeyboardButtonViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

.field private mOnKeyDeletePressListener:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

.field private mOnKeyDonePressListener:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

.field private mOnKeyPressHapticFeedbackListener:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

.field private mOnKeyPressPlaySoundEffectListener:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 28
    sget v1, Lzui/platform/R$id;->num_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_5:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_6:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_7:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_8:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_9:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_delete:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_done:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViewIds:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lzui/widget/NumberKeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lzui/widget/NumberKeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMinLength:I

    const v1, 0x7fffffff

    .line 42
    iput v1, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMaxLength:I

    .line 44
    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyDeletePressListener:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    .line 45
    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyDonePressListener:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    .line 46
    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    .line 47
    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyPressHapticFeedbackListener:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    .line 48
    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyPressPlaySoundEffectListener:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lzui/widget/NumberKeyboardViewX;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lzui/widget/NumberKeyboardViewX;Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->onNumberKeyboardButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 64
    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lzui/platform/R$styleable;->NumberKeyboardViewX:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 69
    sget p3, Lzui/platform/R$styleable;->NumberKeyboardViewX_number_editTextMinLength:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMinLength:I

    .line 71
    sget p3, Lzui/platform/R$styleable;->NumberKeyboardViewX_number_editTextMaxLength:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMaxLength:I

    .line 74
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->initKeyboardViewLayout(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0}, Lzui/widget/NumberKeyboardViewX;->initKeyboardButtonViews()V

    .line 80
    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method private initKeyboardButtonViews()V
    .locals 3

    .line 88
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 89
    :goto_0
    sget-object v1, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViewIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 90
    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lzui/widget/NumberKeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    iget-object v2, p0, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initKeyboardButtonViews: mNumberKeyboardButtonViews size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViews:Ljava/util/List;

    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NumberKeyboardView"

    .line 96
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 100
    new-instance v2, Lzui/widget/NumberKeyboardViewX$1;

    invoke-direct {v2, p0}, Lzui/widget/NumberKeyboardViewX$1;-><init>(Lzui/widget/NumberKeyboardViewX;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 108
    :cond_2
    sget v0, Lzui/platform/R$id;->num_done:I

    invoke-virtual {p0, v0}, Lzui/widget/NumberKeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mBtnNumberDone:Landroid/widget/Button;

    .line 109
    sget v0, Lzui/platform/R$id;->num_delete:I

    invoke-virtual {p0, v0}, Lzui/widget/NumberKeyboardViewX;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mBtnNumberDelete:Landroid/widget/ImageButton;

    .line 110
    iget-object v1, p0, Lzui/widget/NumberKeyboardViewX;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$string;->keyboardx_view_key_delete_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initKeyboardViewLayout(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lzui/platform/R$layout;->number_keyboard_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private onKeyCharPress(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    invoke-interface {v0, p1}, Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;->onKeyCharPress(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumberButtonClick: get input number happens "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NumberKeyboardView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private onKeyDeletePress(Landroid/view/View;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lzui/platform/R$id;->num_delete:I

    if-eq p1, v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyDeletePressListener:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    if-eqz p1, :cond_1

    .line 143
    invoke-interface {p1}, Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;->onKeyDeletePress()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 147
    :cond_1
    iget-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    .line 148
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_2
    return-void
.end method

.method private onKeyDonePress(Landroid/view/View;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lzui/platform/R$id;->num_done:I

    if-eq p1, v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyDonePressListener:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    if-eqz p1, :cond_1

    .line 158
    invoke-interface {p1}, Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;->onKeyDonePress()Z

    :cond_1
    return-void
.end method

.method private onNumberKeyboardButtonClick(Landroid/view/View;)V
    .locals 3

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 123
    sget v1, Lzui/platform/R$id;->num_delete:I

    const-string v2, "NumberKeyboardView"

    if-ne v0, v1, :cond_0

    const-string v0, "onNumberKeyboardButtonClick: num_delete"

    .line 124
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->onKeyDeletePress(Landroid/view/View;)V

    goto :goto_0

    .line 126
    :cond_0
    sget v1, Lzui/platform/R$id;->num_done:I

    if-ne v0, v1, :cond_1

    const-string v0, "onNumberKeyboardButtonClick: num_done"

    .line 127
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->onKeyDonePress(Landroid/view/View;)V

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumberKeyboardButtonClick: num_done "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->onKeyCharPress(Landroid/view/View;)V

    .line 134
    :goto_0
    invoke-direct {p0}, Lzui/widget/NumberKeyboardViewX;->performNumberKeyPress()V

    .line 135
    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method private performNumberKeyPress()V
    .locals 1

    .line 177
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyPressPlaySoundEffectListener:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;->onKeyPressPlaySoundEffect()V

    .line 181
    :cond_0
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyPressHapticFeedbackListener:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    if-eqz v0, :cond_1

    .line 182
    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;->onKeyPressHapticFeedback()V

    :cond_1
    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    const/16 v0, 0x8

    .line 228
    invoke-virtual {p0, v0}, Lzui/widget/NumberKeyboardViewX;->setVisibility(I)V

    return-void
.end method

.method public onEditTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    .line 282
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 283
    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    :cond_0
    return-void
.end method

.method public setBindEditText(Landroid/widget/EditText;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    .line 234
    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setEditTextMaxLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 251
    :cond_0
    iput p1, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMaxLength:I

    .line 252
    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setEditTextMinLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 242
    :cond_0
    iput p1, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMinLength:I

    .line 243
    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setOnKeyCharPressListener(Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyCharPressListener:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    return-void
.end method

.method public setOnKeyDeletePressListener(Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyDeletePressListener:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    return-void
.end method

.method public setOnKeyDonePressListener(Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyDonePressListener:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    return-void
.end method

.method public setOnKeyPressHapticFeedbackListener(Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyPressHapticFeedbackListener:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    return-void
.end method

.method public setOnKeyPressPlaySoundEffectListener(Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->mOnKeyPressPlaySoundEffectListener:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0}, Lzui/widget/NumberKeyboardViewX;->setVisibility(I)V

    return-void
.end method

.method public updateKeyboardViewStatus()V
    .locals 6

    .line 188
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x7fffffff

    .line 194
    iget v2, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMaxLength:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 195
    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 196
    instance-of v5, v4, Landroid/text/InputFilter$LengthFilter;

    if-eqz v5, :cond_2

    .line 197
    check-cast v4, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v4}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v0

    iput v0, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMaxLength:I

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    :cond_3
    :goto_2
    iget v0, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMaxLength:I

    iget v1, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMinLength:I

    if-ge v0, v1, :cond_4

    .line 204
    iput v1, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMaxLength:I

    .line 206
    :cond_4
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mBindEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 208
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mBtnNumberDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_4

    .line 209
    :cond_5
    iget v1, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMinLength:I

    if-eqz v1, :cond_6

    if-ge v0, v1, :cond_6

    .line 210
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mBtnNumberDone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 211
    :cond_6
    iget v1, p0, Lzui/widget/NumberKeyboardViewX;->mEditTextMaxLength:I

    if-ne v0, v1, :cond_8

    .line 212
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->mNumberKeyboardButtonViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lzui/platform/R$id;->num_delete:I

    if-eq v2, v4, :cond_7

    .line 214
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lzui/platform/R$id;->num_done:I

    if-eq v2, v4, :cond_7

    .line 215
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method
