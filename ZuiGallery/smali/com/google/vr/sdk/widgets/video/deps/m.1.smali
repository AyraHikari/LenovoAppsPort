.class public final Lcom/google/vr/sdk/widgets/video/deps/m;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final C:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = -0x1

.field public static final b:J = 0x7fffffffffffffffL


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:I

.field private D:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Lcom/google/vr/sdk/widgets/video/deps/bW;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final k:Lcom/google/vr/sdk/widgets/video/deps/aa;

.field public final l:I

.field public final m:I

.field public final n:F

.field public final o:I

.field public final p:F

.field public final q:I

.field public final r:[B

.field public final s:Lcom/google/vr/sdk/widgets/video/deps/gP;

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:J

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 234
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/m$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/m$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/m;->C:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    .line 70
    const-class v0, Lcom/google/vr/sdk/widgets/video/deps/gP;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/gP;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    :goto_2
    if-ge v1, v0, :cond_2

    .line 83
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    :cond_2
    const-class v0, Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aa;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    .line 86
    const-class v0, Lcom/google/vr/sdk/widgets/video/deps/bW;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/bW;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIFIF[BI",
            "Lcom/google/vr/sdk/widgets/video/deps/gP;",
            "IIIIII",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            "Lcom/google/vr/sdk/widgets/video/deps/bW;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 27
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    move-object v1, p2

    .line 28
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    move-object v1, p3

    .line 29
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    move-object v1, p4

    .line 30
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    move v1, p5

    .line 31
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    move v1, p6

    .line 32
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    move v1, p7

    .line 33
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    move v1, p8

    .line 34
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    move v1, p9

    .line 35
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    move v1, p10

    .line 36
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    move v1, p11

    .line 37
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    move-object v1, p12

    .line 38
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    move/from16 v1, p13

    .line 39
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    move-object/from16 v1, p14

    .line 40
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move/from16 v1, p15

    .line 41
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v1, p16

    .line 42
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v1, p17

    .line 43
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v1, p18

    .line 44
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    move/from16 v1, p19

    .line 45
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    move/from16 v1, p20

    .line 46
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    move-object/from16 v1, p21

    .line 47
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    move/from16 v1, p22

    .line 48
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move-wide/from16 v1, p23

    .line 49
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    if-nez p25, :cond_0

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p25

    .line 51
    :goto_0
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v1, p26

    .line 52
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-object/from16 v1, p27

    .line 53
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 11

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 14
    invoke-static/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v23, p2

    .line 24
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v14, p11

    .line 3
    invoke-static/range {v0 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/vr/sdk/widgets/video/deps/gP;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/vr/sdk/widgets/video/deps/gP;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;IF[BI",
            "Lcom/google/vr/sdk/widgets/video/deps/gP;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v25, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v26, p14

    .line 4
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    const/4 v9, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    .line 2
    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/bW;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/bW;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move-object/from16 v25, p10

    move-object/from16 v26, p11

    move/from16 v20, p12

    move-object/from16 v21, p13

    move-object/from16 v27, p14

    .line 8
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    .line 7
    invoke-static/range {v0 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/bW;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List<",
            "[B>;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    .line 6
    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 11

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 17
    invoke-static/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            "J",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v20, p4

    move-object/from16 v21, p5

    move/from16 v22, p6

    move-object/from16 v26, p7

    move-wide/from16 v23, p8

    move-object/from16 v25, p10

    .line 21
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;J)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 11

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    .line 20
    invoke-static/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;JLjava/util/List;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v26, p4

    .line 25
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v25, p4

    move-object/from16 v21, p5

    move-object/from16 v26, p6

    .line 22
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIF",
            "Ljava/util/List<",
            "[B>;I)",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v25, p8

    move/from16 v20, p9

    .line 1
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/m;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v25, p7

    move/from16 v20, p8

    move-object/from16 v21, p9

    .line 5
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 8

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 9
    invoke-static/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    move/from16 v22, p7

    .line 10
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method private static a(Landroid/media/MediaFormat;Lcom/google/vr/sdk/widgets/video/deps/gP;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 166
    :cond_0
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gP;->c:I

    const-string v1, "color-transfer"

    invoke-static {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 167
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gP;->a:I

    const-string v1, "color-standard"

    invoke-static {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 168
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/gP;->b:I

    const-string v1, "color-range"

    invoke-static {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 169
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/gP;->d:[B

    const-string v0, "hdr-static-info"

    invoke-static {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;[B)V

    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 175
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/media/MediaFormat;Ljava/lang/String;[B)V
    .locals 0

    if-eqz p2, :cond_0

    .line 181
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    .line 23
    new-instance v28, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v0, v28

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v22, -0x1

    const-wide v23, 0x7fffffffffffffffL

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v28
.end method

.method public static b(Lcom/google/vr/sdk/widgets/video/deps/m;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, ", bitrate="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-eq v1, v2, :cond_2

    const-string v1, ", res="

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_3

    const-string v1, ", fps="

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 193
    :cond_3
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    if-eq v1, v2, :cond_4

    const-string v1, ", channels="

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    :cond_4
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    if-eq v1, v2, :cond_5

    const-string v1, ", sample_rate="

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, ", language="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 106
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 88
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v29
.end method

.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v19, p1

    move/from16 v20, p2

    .line 102
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move/from16 v23, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v29
.end method

.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v24, p1

    .line 89
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move/from16 v23, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v29
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v27, p1

    .line 103
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v29
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/bW;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v28, p1

    .line 104
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-object/from16 v27, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v29
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    return-object v0

    .line 93
    :cond_0
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    .line 94
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    :cond_1
    move-object v5, v3

    .line 95
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    :cond_2
    move v6, v3

    .line 96
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_3

    iget v3, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    :cond_3
    move v10, v3

    .line 97
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    or-int v21, v3, v4

    .line 98
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    :cond_4
    move-object/from16 v22, v3

    .line 99
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    if-eqz v1, :cond_5

    goto :goto_0

    .line 100
    :cond_5
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    :goto_0
    move-object/from16 v27, v1

    .line 101
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v1, v29

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    move-wide/from16 v24, v3

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct/range {v1 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v29
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v21, p6

    move-object/from16 v22, p7

    .line 90
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v1, v29

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v29
.end method

.method public final b()Landroid/media/MediaFormat;
    .locals 4

    .line 107
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    const-string v2, "language"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    const-string v2, "max-input-size"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 111
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    const-string/jumbo v2, "width"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 112
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    const-string v2, "height"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 113
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    const-string v2, "frame-rate"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    .line 114
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    const-string v2, "rotation-degrees"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 115
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    const-string v2, "channel-count"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 116
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    const-string v2, "sample-rate"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 117
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    const-string v2, "encoder-delay"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 118
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    const-string v2, "encoder-padding"

    invoke-static {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0xf

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "csd-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Landroid/media/MediaFormat;Lcom/google/vr/sdk/widgets/video/deps/gP;)V

    return-object v0
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v11, p1

    .line 105
    new-instance v29, Lcom/google/vr/sdk/widgets/video/deps/m;

    move-object/from16 v1, v29

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    move/from16 v21, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    move-object/from16 v22, v1

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    move/from16 v23, v1

    move-object/from16 v30, v2

    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-object/from16 v28, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct/range {v1 .. v28}, Lcom/google/vr/sdk/widgets/video/deps/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/google/vr/sdk/widgets/video/deps/gP;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-object v29
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 146
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 147
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    .line 148
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    .line 149
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    .line 150
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 151
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    .line 152
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    .line 153
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    .line 154
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    .line 155
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    .line 156
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    .line 157
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    .line 159
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 125
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->D:I

    if-nez v0, :cond_7

    const/16 v0, 0x20f

    .line 127
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 132
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/aa;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/bW;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    .line 140
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->D:I

    .line 141
    :cond_7
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->D:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 124
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Format("

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ["

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "])"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 210
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 212
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->r:[B

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 215
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->s:Lcom/google/vr/sdk/widgets/video/deps/gP;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 217
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 227
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_2

    .line 229
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_2
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 232
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->f:Lcom/google/vr/sdk/widgets/video/deps/bW;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
