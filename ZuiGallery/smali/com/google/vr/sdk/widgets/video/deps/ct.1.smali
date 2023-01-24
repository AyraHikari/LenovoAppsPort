.class public final Lcom/google/vr/sdk/widgets/video/deps/ct;
.super Lcom/google/vr/sdk/widgets/video/deps/cr;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ct$a;
    }
.end annotation


# static fields
.field public static final n:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/ct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/ct$a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ct$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ct$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->n:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/ct$a;",
            ">;ZJIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cr;-><init>()V

    move-wide v1, p1

    .line 2
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->a:J

    move v1, p3

    .line 3
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->b:Z

    move v1, p4

    .line 4
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->c:Z

    move v1, p5

    .line 5
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->d:Z

    move v1, p6

    .line 6
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->e:Z

    move-wide v1, p7

    .line 7
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->f:J

    move-wide v1, p9

    .line 8
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->g:J

    .line 9
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->h:Ljava/util/List;

    move v1, p12

    .line 10
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->i:Z

    move-wide/from16 v1, p13

    .line 11
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->j:J

    move/from16 v1, p15

    .line 12
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->k:I

    move/from16 v1, p16

    .line 13
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->l:I

    move/from16 v1, p17

    .line 14
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ct;->m:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 16
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cr;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->a:J

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->b:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->c:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->d:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->e:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->f:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->g:J

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_4
    if-ge v4, v0, :cond_4

    .line 27
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct$a;->b(Landroid/os/Parcel;)Lcom/google/vr/sdk/widgets/video/deps/ct$a;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 29
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->h:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->i:Z

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->j:J

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->k:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->l:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->m:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/vr/sdk/widgets/video/deps/ct$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static a(Lcom/google/vr/sdk/widgets/video/deps/gA;JLcom/google/vr/sdk/widgets/video/deps/gJ;)Lcom/google/vr/sdk/widgets/video/deps/ct;
    .locals 27

    move-object/from16 v0, p3

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v2

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 42
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-nez v6, :cond_b

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v9

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    and-int/lit8 v11, v9, 0x40

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    and-int/lit8 v12, v9, 0x20

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    and-int/lit8 v9, v9, 0x10

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v11, :cond_5

    if-nez v9, :cond_5

    .line 55
    invoke-static/range {p0 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/cw;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)J

    move-result-wide v13

    goto :goto_5

    :cond_5
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    if-nez v11, :cond_8

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    .line 58
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_7

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v18

    if-nez v9, :cond_6

    .line 63
    invoke-static/range {p0 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/cw;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;J)J

    move-result-wide v19

    move-wide/from16 v7, v19

    goto :goto_7

    :cond_6
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    :goto_7
    new-instance v5, Lcom/google/vr/sdk/widgets/video/deps/ct$a;

    .line 65
    invoke-virtual {v0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->b(J)J

    move-result-wide v21

    const/16 v23, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v19, v7

    invoke-direct/range {v17 .. v23}, Lcom/google/vr/sdk/widgets/video/deps/ct$a;-><init>(IJJLcom/google/vr/sdk/widgets/video/deps/ct$1;)V

    .line 66
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    move-object v1, v15

    :cond_8
    if-eqz v12, :cond_a

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v7, 0x80

    and-long/2addr v7, v4

    const-wide/16 v17, 0x0

    cmp-long v7, v7, v17

    if-eqz v7, :cond_9

    const/16 v16, 0x1

    goto :goto_8

    :cond_9
    const/16 v16, 0x0

    :goto_8
    const-wide/16 v7, 0x1

    and-long/2addr v4, v7

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v7

    or-long/2addr v7, v4

    move/from16 v5, v16

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v4

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v12

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v15

    move/from16 v16, v4

    move/from16 v24, v11

    move/from16 v17, v12

    move/from16 v18, v15

    move-object v12, v1

    move-wide/from16 v25, v13

    move v13, v5

    move-wide v14, v7

    move v7, v9

    move v5, v10

    move-wide/from16 v8, v25

    goto :goto_a

    :cond_b
    move-object v12, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    .line 75
    :goto_a
    new-instance v19, Lcom/google/vr/sdk/widgets/video/deps/ct;

    move-object/from16 v1, v19

    .line 76
    invoke-virtual {v0, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/gJ;->b(J)J

    move-result-wide v10

    move v4, v6

    move/from16 v6, v24

    invoke-direct/range {v1 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/ct;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    return-object v19
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->b:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 81
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->d:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 82
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->e:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 83
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/ct$a;

    invoke-virtual {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ct$a;->a(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ct;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
