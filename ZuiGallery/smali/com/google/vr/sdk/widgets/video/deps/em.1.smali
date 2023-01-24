.class public Lcom/google/vr/sdk/widgets/video/deps/em;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/em$b;,
        Lcom/google/vr/sdk/widgets/video/deps/em$a;
    }
.end annotation


# static fields
.field public static final a:F = 1.4E-45f

.field public static final b:I = -0x80000000

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x0

.field public static final g:I = 0x1


# instance fields
.field public final h:Ljava/lang/CharSequence;

.field public final i:Landroid/text/Layout$Alignment;

.field public final j:Landroid/graphics/Bitmap;

.field public final k:F

.field public final l:I

.field public final m:I

.field public final n:F

.field public final o:I

.field public final p:F

.field public final q:F

.field public final r:Z

.field public final s:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;FIFIFF)V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/high16 v12, -0x1000000

    move-object v0, p0

    move-object v3, p1

    move/from16 v4, p4

    move/from16 v6, p5

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p6

    move/from16 v10, p7

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 11

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 5
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V
    .locals 13

    const/4 v3, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    move/from16 v12, p10

    .line 7
    invoke-direct/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFFZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIFFZI)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->h:Ljava/lang/CharSequence;

    .line 11
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->i:Landroid/text/Layout$Alignment;

    .line 12
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->j:Landroid/graphics/Bitmap;

    .line 13
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->k:F

    .line 14
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->l:I

    .line 15
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->m:I

    .line 16
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->n:F

    .line 17
    iput p8, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->o:I

    .line 18
    iput p9, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->p:F

    .line 19
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->q:F

    .line 20
    iput-boolean p11, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->r:Z

    .line 21
    iput p12, p0, Lcom/google/vr/sdk/widgets/video/deps/em;->s:I

    return-void
.end method
