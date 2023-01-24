.class public Lzui/appcompat/preference/PreferenceFragment;
.super Landroidx/preference/PreferenceFragment;
.source "PreferenceFragment.java"


# static fields
.field private static final DEBUG_TOUCH:Z = true

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static HEADER_HEIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lzui/appcompat/preference/PreferenceFragment;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PreferenceFragment"


# instance fields
.field private HEADER_BACK_ANIM_DURATION:I

.field private final INFINITE_PULL_DISTANCE_DECREMENT:I

.field private final ITEM_PULL_DISTANCE_EACH_MOVE:I

.field private ITEM_PULL_MAX_DISTANCE:I

.field private final MAX_ITEM_HEIGHT_RATIO:I

.field private final MIN_FLING_VELOCITY:I

.field private mEnableStretch:Z

.field private mHeaderAnim:Landroid/animation/ObjectAnimator;

.field private mLastPosition:I

.field private mLastY:I

.field private mListener:Landroid/animation/Animator$AnimatorListener;

.field private final mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mPointerId:I

.field private mPullAnimEnabled:Z

.field private mPullDistance:I

.field private mPullStartX:I

.field private mPullStartY:I

.field private mPullingMode:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 187
    new-instance v0, Lzui/appcompat/preference/PreferenceFragment$2;

    const-string v1, "HeaderHeight"

    invoke-direct {v0, v1}, Lzui/appcompat/preference/PreferenceFragment$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzui/appcompat/preference/PreferenceFragment;->HEADER_HEIGHT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPointerId:I

    const/4 v1, 0x1

    .line 47
    iput-boolean v1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullAnimEnabled:Z

    const/16 v1, 0x96

    .line 51
    iput v1, p0, Lzui/appcompat/preference/PreferenceFragment;->ITEM_PULL_MAX_DISTANCE:I

    const/16 v1, 0x12c

    .line 52
    iput v1, p0, Lzui/appcompat/preference/PreferenceFragment;->HEADER_BACK_ANIM_DURATION:I

    .line 116
    new-instance v1, Lzui/appcompat/preference/PreferenceFragment$1;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/PreferenceFragment$1;-><init>(Lzui/appcompat/preference/PreferenceFragment;)V

    iput-object v1, p0, Lzui/appcompat/preference/PreferenceFragment;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 204
    new-instance v1, Lzui/appcompat/preference/PreferenceFragment$3;

    invoke-direct {v1, p0}, Lzui/appcompat/preference/PreferenceFragment$3;-><init>(Lzui/appcompat/preference/PreferenceFragment;)V

    iput-object v1, p0, Lzui/appcompat/preference/PreferenceFragment;->mListener:Landroid/animation/Animator$AnimatorListener;

    const/16 v1, 0x28

    .line 244
    iput v1, p0, Lzui/appcompat/preference/PreferenceFragment;->MAX_ITEM_HEIGHT_RATIO:I

    const/16 v1, 0xc

    .line 245
    iput v1, p0, Lzui/appcompat/preference/PreferenceFragment;->ITEM_PULL_DISTANCE_EACH_MOVE:I

    const/16 v1, 0x32

    .line 246
    iput v1, p0, Lzui/appcompat/preference/PreferenceFragment;->INFINITE_PULL_DISTANCE_DECREMENT:I

    const/16 v1, 0x1388

    .line 247
    iput v1, p0, Lzui/appcompat/preference/PreferenceFragment;->MIN_FLING_VELOCITY:I

    .line 248
    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mEnableStretch:Z

    return-void
.end method

.method static synthetic access$000(Lzui/appcompat/preference/PreferenceFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullStartX:I

    return p0
.end method

.method static synthetic access$002(Lzui/appcompat/preference/PreferenceFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullStartX:I

    return p1
.end method

.method static synthetic access$100(Lzui/appcompat/preference/PreferenceFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullStartY:I

    return p0
.end method

.method static synthetic access$102(Lzui/appcompat/preference/PreferenceFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullStartY:I

    return p1
.end method

.method static synthetic access$200(Lzui/appcompat/preference/PreferenceFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lzui/appcompat/preference/PreferenceFragment;->mLastY:I

    return p0
.end method

.method static synthetic access$202(Lzui/appcompat/preference/PreferenceFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mLastY:I

    return p1
.end method

.method static synthetic access$300(Lzui/appcompat/preference/PreferenceFragment;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->isPullAnimationAllowed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lzui/appcompat/preference/PreferenceFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->startFinishAnimate()V

    return-void
.end method

.method static synthetic access$502(Lzui/appcompat/preference/PreferenceFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPointerId:I

    return p1
.end method

.method static synthetic access$600(Lzui/appcompat/preference/PreferenceFragment;IZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lzui/appcompat/preference/PreferenceFragment;->scaleHeight(IZ)V

    return-void
.end method

.method static synthetic access$700(Lzui/appcompat/preference/PreferenceFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lzui/appcompat/preference/PreferenceFragment;->mLastPosition:I

    return p0
.end method

.method static synthetic access$702(Lzui/appcompat/preference/PreferenceFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mLastPosition:I

    return p1
.end method

.method static synthetic access$802(Lzui/appcompat/preference/PreferenceFragment;I)I
    .locals 0

    .line 38
    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    return p1
.end method

.method static synthetic access$900(Lzui/appcompat/preference/PreferenceFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->resetPullingMode()V

    return-void
.end method

.method private canPull(I)Z
    .locals 7

    .line 297
    invoke-direct {p0, p1}, Lzui/appcompat/preference/PreferenceFragment;->setPullingMode(I)V

    .line 298
    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 299
    :goto_0
    iget v3, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 300
    :goto_1
    iget v4, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 302
    :goto_2
    iget v5, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d

    if-nez p1, :cond_3

    goto :goto_7

    :cond_3
    if-eqz v0, :cond_4

    .line 307
    iget v5, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    iget v6, p0, Lzui/appcompat/preference/PreferenceFragment;->ITEM_PULL_MAX_DISTANCE:I

    if-lt v5, v6, :cond_4

    if-lez p1, :cond_4

    return v2

    :cond_4
    if-eqz v3, :cond_5

    .line 312
    iget v5, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    iget v6, p0, Lzui/appcompat/preference/PreferenceFragment;->ITEM_PULL_MAX_DISTANCE:I

    neg-int v6, v6

    if-gt v5, v6, :cond_5

    if-gez p1, :cond_5

    return v2

    .line 316
    :cond_5
    iget v5, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x28

    div-int/lit8 v5, v5, 0x32

    add-int/2addr v5, v1

    if-eqz v0, :cond_8

    .line 318
    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    if-ltz v0, :cond_8

    if-lez p1, :cond_6

    .line 320
    div-int v6, p1, v5

    add-int/2addr v0, v6

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    goto :goto_3

    :cond_6
    add-int/2addr v0, p1

    .line 322
    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    .line 324
    :goto_3
    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    iget v6, p0, Lzui/appcompat/preference/PreferenceFragment;->ITEM_PULL_MAX_DISTANCE:I

    if-le v0, v6, :cond_7

    .line 325
    iput v6, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    goto :goto_4

    :cond_7
    if-gez v0, :cond_8

    .line 327
    iput v2, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    :cond_8
    :goto_4
    if-nez v3, :cond_9

    if-eqz v4, :cond_c

    :cond_9
    if-gez p1, :cond_a

    .line 334
    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    div-int/2addr p1, v5

    add-int/2addr v0, p1

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    goto :goto_5

    .line 336
    :cond_a
    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    .line 339
    :goto_5
    iget p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->ITEM_PULL_MAX_DISTANCE:I

    neg-int v3, v0

    if-ge p1, v3, :cond_b

    neg-int p1, v0

    .line 340
    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    goto :goto_6

    :cond_b
    if-lez p1, :cond_c

    .line 342
    iput v2, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    :cond_c
    :goto_6
    return v1

    :cond_d
    :goto_7
    return v2
.end method

.method private createHeaderAnim()V
    .locals 4

    .line 224
    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mLastPosition:I

    .line 225
    sget-object v1, Lzui/appcompat/preference/PreferenceFragment;->HEADER_HEIGHT:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 226
    iget v1, p0, Lzui/appcompat/preference/PreferenceFragment;->HEADER_BACK_ANIM_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    iget-object v1, p0, Lzui/appcompat/preference/PreferenceFragment;->mListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    iput-object v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private isBottom()Z
    .locals 5

    .line 263
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    move v1, v4

    :cond_0
    return v1
.end method

.method private isPullAnimationAllowed()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullAnimEnabled:Z

    return v0
.end method

.method private isTop()Z
    .locals 3

    .line 252
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v2, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v2, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private resetPullingMode()V
    .locals 1

    const/4 v0, -0x1

    .line 293
    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    return-void
.end method

.method private scaleHeight(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 351
    invoke-direct {p0, p1}, Lzui/appcompat/preference/PreferenceFragment;->canPull(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 356
    :cond_0
    iget-boolean p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mEnableStretch:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 357
    :cond_2
    :goto_0
    iget p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    div-int/lit8 p1, p1, 0x3

    .line 358
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    .line 359
    iget p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    if-nez p1, :cond_3

    .line 360
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->resetPullingMode()V

    :cond_3
    return-void
.end method

.method private setPullingMode(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 275
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 276
    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    :cond_0
    if-gez p1, :cond_1

    .line 279
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    if-nez v0, :cond_1

    .line 280
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->isTop()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 281
    iput v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    :cond_1
    if-gez p1, :cond_2

    .line 285
    iget p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    if-nez p1, :cond_2

    .line 286
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->isBottom()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->isTop()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 287
    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullingMode:I

    :cond_2
    return-void
.end method

.method private startFinishAnimate()V
    .locals 1

    .line 238
    iget v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullDistance:I

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->createHeaderAnim()V

    .line 240
    invoke-direct {p0}, Lzui/appcompat/preference/PreferenceFragment;->startHeaderAnim()V

    :cond_0
    return-void
.end method

.method private startHeaderAnim()V
    .locals 1

    .line 233
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceFragment;->mHeaderAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 63
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 67
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 75
    :cond_2
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 80
    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzui/appcompat/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lzui/appcompat/preference/EditTextPreferenceDialogFragment;

    move-result-object p1

    goto :goto_1

    .line 82
    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 83
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzui/appcompat/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lzui/appcompat/preference/ListPreferenceDialogFragment;

    move-result-object p1

    goto :goto_1

    .line 84
    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 85
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lzui/appcompat/preference/MultiSelectListPreferenceDialogFragment;

    move-result-object p1

    .line 90
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 91
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 98
    sget p2, Lzui/platform/R$dimen;->listview_x_pull_max_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lzui/appcompat/preference/PreferenceFragment;->ITEM_PULL_MAX_DISTANCE:I

    .line 100
    sget p2, Lzui/platform/R$integer;->config_list_header_anim_time:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lzui/appcompat/preference/PreferenceFragment;->HEADER_BACK_ANIM_DURATION:I

    .line 102
    invoke-virtual {p0}, Lzui/appcompat/preference/PreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 104
    iget-object p2, p0, Lzui/appcompat/preference/PreferenceFragment;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_0
    return-void
.end method

.method public setPullAnimEnabled(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lzui/appcompat/preference/PreferenceFragment;->mPullAnimEnabled:Z

    return-void
.end method
