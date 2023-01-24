.class public final Lcom/google/vr/sdk/widgets/video/deps/el;
.super Ljava/lang/Object;
.source "CaptionStyleCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/el$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x1

.field public static final g:Lcom/google/vr/sdk/widgets/video/deps/el;


# instance fields
.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/el;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/el;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v7, Lcom/google/vr/sdk/widgets/video/deps/el;->g:Lcom/google/vr/sdk/widgets/video/deps/el;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/el;->h:I

    .line 6
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/el;->i:I

    .line 7
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/el;->j:I

    .line 8
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/el;->k:I

    .line 9
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/el;->l:I

    .line 10
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/el;->m:Landroid/graphics/Typeface;

    return-void
.end method

.method public static a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/vr/sdk/widgets/video/deps/el;
    .locals 2

    .line 1
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/el;->c(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/vr/sdk/widgets/video/deps/el;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/el;->b(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/vr/sdk/widgets/video/deps/el;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/vr/sdk/widgets/video/deps/el;
    .locals 8

    .line 12
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/el;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 13
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    const/4 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/el;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method

.method private static c(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/vr/sdk/widgets/video/deps/el;
    .locals 8

    .line 15
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/el;

    .line 16
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/el;->g:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->h:I

    :goto_0
    move v1, v0

    .line 17
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/el;->g:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->i:I

    :goto_1
    move v2, v0

    .line 18
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/el;->g:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->j:I

    :goto_2
    move v3, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/el;->g:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->k:I

    :goto_3
    move v4, v0

    .line 20
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/el;->g:Lcom/google/vr/sdk/widgets/video/deps/el;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/el;->l:I

    :goto_4
    move v5, v0

    .line 21
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/el;-><init>(IIIIILandroid/graphics/Typeface;)V

    return-object v7
.end method
