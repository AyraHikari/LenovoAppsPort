.class public Lzui/widget/Switch;
.super Landroid/widget/Switch;
.source "Switch.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "switch"


# instance fields
.field private mForceVib:Z

.field private mLeftAligned:Z

.field private mRightAligned:Z

.field private mThumbPaddingLeft:I

.field private mThumbPaddingRight:I

.field private mVibHelper:Lzui/util/VibrationHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, v0, v1, v1}, Lzui/widget/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    sget v0, Lzui/platform/R$style;->Widget_Zui_CompoundButton_Switch:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lzui/widget/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget v0, Lzui/platform/R$style;->Widget_Zui_CompoundButton_Switch:I

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lzui/widget/Switch;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 118
    sget-object v0, Lzui/platform/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 120
    sget p3, Lzui/platform/R$styleable;->Switch_LeftAligned:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lzui/widget/Switch;->mLeftAligned:Z

    .line 121
    sget p3, Lzui/platform/R$styleable;->Switch_rightAligned:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lzui/widget/Switch;->mRightAligned:Z

    .line 122
    sget p3, Lzui/platform/R$styleable;->Switch_ThumbPaddingLeft:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/Switch;->mThumbPaddingLeft:I

    .line 123
    sget p3, Lzui/platform/R$styleable;->Switch_ThumbPaddingRight:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/Switch;->mThumbPaddingRight:I

    .line 124
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-direct {p0}, Lzui/widget/Switch;->updateAttributsToSwitch()V

    .line 126
    invoke-static {}, Lzui/util/CommonUtils;->isLegionStyleProduct()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 127
    sget p2, Lzui/platform/R$drawable;->switch_thumb_zui_anim_legion:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzui/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_0
    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/widget/Switch;->mVibHelper:Lzui/util/VibrationHelper;

    return-void
.end method

.method private updateAttributsToSwitch()V
    .locals 6

    const-string v0, "getInternalVariant:get exception:"

    const-string v1, "switch"

    .line 134
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 135
    iget-boolean v3, p0, Lzui/widget/Switch;->mLeftAligned:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string v3, "mThumbAlignTrackLeft"

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 139
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :cond_0
    iget-boolean v3, p0, Lzui/widget/Switch;->mRightAligned:Z

    if-eqz v3, :cond_1

    const-string v3, "mThumbAlignTrackRight"

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 146
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    :cond_1
    iget v3, p0, Lzui/widget/Switch;->mThumbPaddingLeft:I

    if-eqz v3, :cond_2

    const-string v3, "mThumbPaddingLeft"

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 153
    iget v5, p0, Lzui/widget/Switch;->mThumbPaddingLeft:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :cond_2
    iget v3, p0, Lzui/widget/Switch;->mThumbPaddingRight:I

    if-eqz v3, :cond_3

    const-string v3, "mThumbPaddingRight"

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 160
    iget v3, p0, Lzui/widget/Switch;->mThumbPaddingRight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 10

    .line 64
    invoke-virtual {p0}, Lzui/widget/Switch;->isChecked()Z

    move-result v0

    .line 65
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 66
    iget-object v1, p0, Lzui/widget/Switch;->mVibHelper:Lzui/util/VibrationHelper;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lzui/widget/Switch;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq p1, v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lzui/widget/Switch;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lzui/widget/Switch;->mForceVib:Z

    if-eqz p1, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lzui/widget/Switch;->mVibHelper:Lzui/util/VibrationHelper;

    const/4 v1, 0x2

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/16 v6, 0x64

    const/16 v7, 0x64

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    goto :goto_0

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not vibrated! isPressed()="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzui/widget/Switch;->isPressed()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "switch"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 10

    .line 94
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    if-eqz p2, :cond_0

    .line 100
    iget-object p1, p0, Lzui/widget/Switch;->mVibHelper:Lzui/util/VibrationHelper;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lzui/widget/Switch;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lzui/widget/Switch;->mVibHelper:Lzui/util/VibrationHelper;

    const/4 v1, 0x2

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/16 v6, 0x64

    const/16 v7, 0x64

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    :cond_0
    return-void
.end method

.method public setForceVibration(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lzui/widget/Switch;->mForceVib:Z

    return-void
.end method
