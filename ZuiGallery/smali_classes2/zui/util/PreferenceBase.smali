.class public Lzui/util/PreferenceBase;
.super Ljava/lang/Object;
.source "PreferenceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/util/PreferenceBase$PreferenceCallback;
    }
.end annotation


# instance fields
.field private mActivivatedBg:Landroid/graphics/drawable/Drawable;

.field private mBg:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lzui/util/PreferenceBase$PreferenceCallback;

.field private mLineCount:I

.field private mNeedRefresh:Z

.field private mPaddingEnd:I

.field private mPaddingStart:I


# direct methods
.method public constructor <init>(Lzui/util/PreferenceBase$PreferenceCallback;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lzui/util/PreferenceBase;->mPaddingStart:I

    .line 44
    iput v0, p0, Lzui/util/PreferenceBase;->mPaddingEnd:I

    .line 47
    iput-object p1, p0, Lzui/util/PreferenceBase;->mCallback:Lzui/util/PreferenceBase$PreferenceCallback;

    return-void
.end method

.method static synthetic access$000(Lzui/util/PreferenceBase;)I
    .locals 0

    .line 32
    iget p0, p0, Lzui/util/PreferenceBase;->mLineCount:I

    return p0
.end method

.method static synthetic access$002(Lzui/util/PreferenceBase;I)I
    .locals 0

    .line 32
    iput p1, p0, Lzui/util/PreferenceBase;->mLineCount:I

    return p1
.end method

.method static synthetic access$100(Lzui/util/PreferenceBase;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lzui/util/PreferenceBase;->mNeedRefresh:Z

    return p0
.end method

.method static synthetic access$102(Lzui/util/PreferenceBase;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lzui/util/PreferenceBase;->mNeedRefresh:Z

    return p1
.end method

.method static synthetic access$200(Lzui/util/PreferenceBase;)Lzui/util/PreferenceBase$PreferenceCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lzui/util/PreferenceBase;->mCallback:Lzui/util/PreferenceBase$PreferenceCallback;

    return-object p0
.end method


# virtual methods
.method public adjustPaddings(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 161
    iget v0, p0, Lzui/util/PreferenceBase;->mPaddingStart:I

    if-gtz v0, :cond_0

    iget v0, p0, Lzui/util/PreferenceBase;->mPaddingEnd:I

    if-lez v0, :cond_3

    .line 162
    :cond_0
    iget v0, p0, Lzui/util/PreferenceBase;->mPaddingStart:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 163
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lzui/util/PreferenceBase;->mPaddingEnd:I

    if-lez v2, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 165
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 162
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 52
    sget-object p4, Lzui/platform/R$styleable;->Theme_Zui:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_preferenceActivatedBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lzui/util/PreferenceBase;->mActivivatedBg:Landroid/graphics/drawable/Drawable;

    .line 55
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_android_paddingStart:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzui/util/PreferenceBase;->mPaddingStart:I

    if-gez p2, :cond_0

    .line 57
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_android_paddingLeft:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzui/util/PreferenceBase;->mPaddingStart:I

    .line 59
    :cond_0
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_android_paddingEnd:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzui/util/PreferenceBase;->mPaddingEnd:I

    if-gez p2, :cond_1

    .line 61
    sget p2, Lzui/platform/R$styleable;->Theme_Zui_android_paddingRight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lzui/util/PreferenceBase;->mPaddingEnd:I

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 106
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 108
    new-instance v1, Lzui/util/PreferenceBase$2;

    invoke-direct {v1, p0, v0, p1}, Lzui/util/PreferenceBase$2;-><init>(Lzui/util/PreferenceBase;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 71
    new-instance v1, Lzui/util/PreferenceBase$1;

    invoke-direct {v1, p0, v0, p1}, Lzui/util/PreferenceBase$1;-><init>(Lzui/util/PreferenceBase;Landroid/view/ViewTreeObserver;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public setActivated(Landroid/view/View;ZZ)V
    .locals 2

    if-eqz p1, :cond_3

    .line 142
    iget-object v0, p0, Lzui/util/PreferenceBase;->mActivivatedBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lzui/util/PreferenceBase;->mBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/util/PreferenceBase;->mBg:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 148
    iget-object p2, p0, Lzui/util/PreferenceBase;->mBg:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    const v1, 0x10100a7

    aput v1, p3, v0

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 149
    iget-object p2, p0, Lzui/util/PreferenceBase;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p2, p0, Lzui/util/PreferenceBase;->mActivivatedBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object p2, p0, Lzui/util/PreferenceBase;->mBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPreferencePadding(II)V
    .locals 0

    .line 171
    iput p1, p0, Lzui/util/PreferenceBase;->mPaddingStart:I

    .line 172
    iput p2, p0, Lzui/util/PreferenceBase;->mPaddingEnd:I

    return-void
.end method
