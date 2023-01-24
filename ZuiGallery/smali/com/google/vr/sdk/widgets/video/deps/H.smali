.class public final Lcom/google/vr/sdk/widgets/video/deps/H;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/H$g;,
        Lcom/google/vr/sdk/widgets/video/deps/H$b;,
        Lcom/google/vr/sdk/widgets/video/deps/H$a;,
        Lcom/google/vr/sdk/widgets/video/deps/H$e;,
        Lcom/google/vr/sdk/widgets/video/deps/H$h;,
        Lcom/google/vr/sdk/widgets/video/deps/H$d;,
        Lcom/google/vr/sdk/widgets/video/deps/H$c;,
        Lcom/google/vr/sdk/widgets/video/deps/H$f;
    }
.end annotation


# static fields
.field public static final a:J = -0x8000000000000000L

.field public static b:Z = false

.field public static c:Z = false

.field private static final d:J = 0x3d090L

.field private static final e:J = 0xb71b0L

.field private static final f:J = 0x3d090L

.field private static final g:I = 0x4

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = -0x2

.field private static final l:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = 0x1

.field private static final o:I = 0x1

.field private static final p:Ljava/lang/String; = "AudioTrack"

.field private static final q:J = 0x4c4b40L

.field private static final r:J = 0x4c4b40L

.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x2

.field private static final v:I = 0xa

.field private static final w:I = 0x7530

.field private static final x:I = 0x7a120

.field private static final y:I = 0x400


# instance fields
.field private final A:Lcom/google/vr/sdk/widgets/video/deps/I;

.field private final B:Lcom/google/vr/sdk/widgets/video/deps/O;

.field private final C:[Lcom/google/vr/sdk/widgets/video/deps/F;

.field private final D:Lcom/google/vr/sdk/widgets/video/deps/H$f;

.field private final E:Landroid/os/ConditionVariable;

.field private final F:[J

.field private final G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

.field private final H:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/vr/sdk/widgets/video/deps/H$g;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroid/media/AudioTrack;

.field private J:Landroid/media/AudioTrack;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:Lcom/google/vr/sdk/widgets/video/deps/B;

.field private P:Z

.field private Q:I

.field private R:J

.field private S:Lcom/google/vr/sdk/widgets/video/deps/s;

.field private T:Lcom/google/vr/sdk/widgets/video/deps/s;

.field private U:J

.field private V:J

.field private W:Ljava/nio/ByteBuffer;

.field private X:I

.field private Y:I

.field private Z:I

.field private aA:I

.field private aB:Z

.field private aC:Z

.field private aD:J

.field private aa:J

.field private ab:J

.field private ac:Z

.field private ad:J

.field private ae:Ljava/lang/reflect/Method;

.field private af:I

.field private ag:J

.field private ah:J

.field private ai:I

.field private aj:J

.field private ak:J

.field private al:I

.field private am:I

.field private an:J

.field private ao:J

.field private ap:J

.field private aq:F

.field private ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

.field private as:[Ljava/nio/ByteBuffer;

.field private at:Ljava/nio/ByteBuffer;

.field private au:Ljava/nio/ByteBuffer;

.field private av:[B

.field private aw:I

.field private ax:I

.field private ay:Z

.field private az:Z

.field private final z:Lcom/google/vr/sdk/widgets/video/deps/C;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/C;[Lcom/google/vr/sdk/widgets/video/deps/F;Lcom/google/vr/sdk/widgets/video/deps/H$f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->z:Lcom/google/vr/sdk/widgets/video/deps/C;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->D:Lcom/google/vr/sdk/widgets/video/deps/H$f;

    .line 4
    new-instance p1, Landroid/os/ConditionVariable;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->E:Landroid/os/ConditionVariable;

    .line 5
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x12

    if-lt p1, v1, :cond_0

    .line 6
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    move-object v2, v0

    check-cast v2, [Ljava/lang/Class;

    .line 7
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ae:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    :cond_0
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_1

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/H$b;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/H$b;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/H$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/H$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    .line 13
    :goto_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/I;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/I;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->A:Lcom/google/vr/sdk/widgets/video/deps/I;

    .line 14
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/O;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/O;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->B:Lcom/google/vr/sdk/widgets/video/deps/O;

    .line 15
    array-length p1, p2

    add-int/lit8 p1, p1, 0x3

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/F;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->C:[Lcom/google/vr/sdk/widgets/video/deps/F;

    .line 16
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/L;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/L;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 17
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->C:[Lcom/google/vr/sdk/widgets/video/deps/F;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->A:Lcom/google/vr/sdk/widgets/video/deps/I;

    aput-object v0, p1, p3

    .line 18
    array-length p3, p2

    const/4 v0, 0x2

    invoke-static {p2, v1, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->C:[Lcom/google/vr/sdk/widgets/video/deps/F;

    array-length p2, p2

    add-int/2addr p2, v0

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->B:Lcom/google/vr/sdk/widgets/video/deps/O;

    aput-object p3, p1, p2

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 20
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->F:[J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aq:F

    .line 22
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    .line 23
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/B;->a:Lcom/google/vr/sdk/widgets/video/deps/B;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->O:Lcom/google/vr/sdk/widgets/video/deps/B;

    .line 24
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    .line 25
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/s;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ax:I

    new-array p1, v1, [Lcom/google/vr/sdk/widgets/video/deps/F;

    .line 27
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

    new-array p1, v1, [Ljava/nio/ByteBuffer;

    .line 28
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->as:[Ljava/nio/ByteBuffer;

    .line 29
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    return-void
.end method

.method private static a(ILjava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 541
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/A;->a()I

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 543
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/A;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    .line 544
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const/16 v0, 0x26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected audio encoding: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 539
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/J;->a(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    const/4 v0, 0x1

    .line 545
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 5

    .line 546
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 547
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    .line 548
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 549
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 550
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->X:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 552
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    const-wide/16 v3, 0x3e8

    mul-long/2addr p4, v3

    invoke-virtual {v0, v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 553
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 554
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->X:I

    .line 555
    :cond_1
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_3

    .line 557
    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p5

    if-gez p5, :cond_2

    .line 559
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->X:I

    return p5

    :cond_2
    if-ge p5, p4, :cond_3

    return v1

    .line 563
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gez p1, :cond_4

    .line 565
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->X:I

    return p1

    .line 567
    :cond_4
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->X:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->X:I

    return p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/H;)Landroid/os/ConditionVariable;
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->E:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private a(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$h;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    if-lez v1, :cond_0

    .line 223
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->as:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->at:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/F;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 226
    invoke-direct {p0, v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(Ljava/nio/ByteBuffer;J)Z

    goto :goto_2

    .line 227
    :cond_2
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

    aget-object v3, v3, v1

    .line 228
    invoke-interface {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/F;->a(Ljava/nio/ByteBuffer;)V

    .line 229
    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/F;->e()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 230
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->as:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 231
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static a(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 569
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 5

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    const/16 p0, 0x8

    return p0

    :cond_2
    const/4 p0, 0x7

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_3
        0xb269698 -> :sswitch_2
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(J)J
    .locals 10

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    .line 419
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/H$g;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/H$g;->b(Lcom/google/vr/sdk/widgets/video/deps/H$g;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/H$g;

    .line 421
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/H$g;->a(Lcom/google/vr/sdk/widgets/video/deps/H$g;)Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 422
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/H$g;->b(Lcom/google/vr/sdk/widgets/video/deps/H$g;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->V:J

    .line 423
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/H$g;->c(Lcom/google/vr/sdk/widgets/video/deps/H$g;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->an:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->U:J

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/s;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 426
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->U:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->V:J

    sub-long/2addr p1, v0

    return-wide p1

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->B:Lcom/google/vr/sdk/widgets/video/deps/O;

    .line 428
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/O;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 429
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->U:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->V:J

    sub-long v4, p1, v2

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->B:Lcom/google/vr/sdk/widgets/video/deps/O;

    .line 430
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/O;->i()J

    move-result-wide v6

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->B:Lcom/google/vr/sdk/widgets/video/deps/O;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/O;->j()J

    move-result-wide v8

    .line 431
    invoke-static/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(JJJ)J

    move-result-wide p1

    :goto_1
    add-long/2addr v0, p1

    return-wide v0

    .line 433
    :cond_2
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->U:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/s;->b:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->V:J

    sub-long/2addr p1, v4

    long-to-double p1, p1

    mul-double/2addr v2, p1

    double-to-long p1, v2

    goto :goto_1
.end method

.method private static b(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 571
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private b(Ljava/nio/ByteBuffer;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$h;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->au:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 242
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    goto :goto_1

    .line 243
    :cond_2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->au:Ljava/nio/ByteBuffer;

    .line 244
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    if-ge v0, v2, :cond_5

    .line 245
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 246
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->av:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 247
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->av:[B

    .line 248
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 249
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->av:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 250
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aw:I

    .line 252
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 254
    sget v4, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    if-ge v4, v2, :cond_7

    .line 255
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aj:J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    .line 256
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->b()J

    move-result-wide v4

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ai:I

    int-to-long v6, v2

    mul-long/2addr v4, v6

    sub-long/2addr p2, v4

    long-to-int p2, p2

    .line 257
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    sub-int/2addr p3, p2

    if-lez p3, :cond_6

    .line 259
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 260
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->av:[B

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aw:I

    invoke-virtual {p3, v2, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_a

    .line 262
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aw:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aw:I

    .line 263
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3

    :cond_6
    move p2, v3

    goto :goto_3

    .line 264
    :cond_7
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aB:Z

    if-eqz v2, :cond_9

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_2

    :cond_8
    move v2, v3

    .line 265
    :goto_2
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 266
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    move-object v6, p0

    move-object v8, p1

    move v9, v0

    move-wide v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result p2

    goto :goto_3

    .line 267
    :cond_9
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-static {p2, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result p2

    .line 268
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aD:J

    if-ltz p2, :cond_e

    .line 271
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-nez p1, :cond_b

    .line 272
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aj:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aj:J

    :cond_b
    if-ne p2, v0, :cond_d

    .line 274
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-eqz p1, :cond_c

    .line 275
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ak:J

    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->al:I

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ak:J

    :cond_c
    const/4 p1, 0x0

    .line 276
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->au:Ljava/nio/ByteBuffer;

    return v1

    :cond_d
    return v3

    .line 270
    :cond_e
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/H$h;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/H$h;-><init>(I)V

    throw p1
.end method

.method private c(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    .line 483
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->K:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private c(I)Landroid/media/AudioTrack;
    .locals 9

    .line 531
    new-instance v8, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object v8
.end method

.method private d(J)J
    .locals 2

    .line 484
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->K:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private k()V
    .locals 7

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->C:[Lcom/google/vr/sdk/widgets/video/deps/F;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 127
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/F;->a()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    :cond_0
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/F;->g()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 132
    new-array v2, v1, [Lcom/google/vr/sdk/widgets/video/deps/F;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/F;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

    .line 133
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->as:[Ljava/nio/ByteBuffer;

    :goto_2
    if-ge v3, v1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

    aget-object v0, v0, v3

    .line 136
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/F;->g()V

    .line 137
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->as:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/F;->e()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$d;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->E:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 141
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->x()Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    .line 142
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 143
    sget-boolean v1, Lcom/google/vr/sdk/widgets/video/deps/H;->b:Z

    if-eqz v1, :cond_1

    .line 144
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 145
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->I:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->o()V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->I:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    .line 149
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->c(I)Landroid/media/AudioTrack;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->I:Landroid/media/AudioTrack;

    .line 150
    :cond_1
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    if-eq v1, v0, :cond_2

    .line 151
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    .line 152
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->D:Lcom/google/vr/sdk/widgets/video/deps/H$f;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/H$f;->a(I)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->v()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a(Landroid/media/AudioTrack;Z)V

    .line 154
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->n()V

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aC:Z

    return-void
.end method

.method private m()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$h;
        }
    .end annotation

    .line 287
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ax:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 288
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ax:I

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_1
    move v0, v3

    .line 290
    :goto_2
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ax:I

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_4

    .line 291
    aget-object v4, v5, v4

    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/F;->d()V

    .line 294
    :cond_2
    invoke-direct {p0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(J)V

    .line 295
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/F;->f()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 298
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ax:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ax:I

    goto :goto_1

    .line 300
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->au:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 301
    invoke-direct {p0, v0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(Ljava/nio/ByteBuffer;J)Z

    .line 302
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->au:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    return v3

    .line 304
    :cond_5
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ax:I

    return v2
.end method

.method private n()V
    .locals 2

    .line 354
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aq:F

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aq:F

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(Landroid/media/AudioTrack;F)V

    :goto_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->I:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 413
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->I:Landroid/media/AudioTrack;

    .line 414
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/H$2;

    invoke-direct {v1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/H$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/H;Landroid/media/AudioTrack;)V

    .line 415
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/H$2;->start()V

    return-void
.end method

.method private p()Z
    .locals 1

    .line 417
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private q()V
    .locals 20

    move-object/from16 v0, p0

    .line 434
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 437
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 438
    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ab:J

    sub-long v9, v5, v9

    const-wide/16 v11, 0x7530

    cmp-long v9, v9, v11

    const/4 v10, 0x0

    if-ltz v9, :cond_2

    .line 439
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->F:[J

    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->Y:I

    sub-long v12, v1, v5

    aput-wide v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    const/16 v9, 0xa

    .line 440
    rem-int/2addr v11, v9

    iput v11, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->Y:I

    .line 441
    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->Z:I

    if-ge v11, v9, :cond_1

    add-int/lit8 v11, v11, 0x1

    .line 442
    iput v11, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->Z:I

    .line 443
    :cond_1
    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ab:J

    .line 444
    iput-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->aa:J

    move v9, v10

    .line 445
    :goto_0
    iget v11, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->Z:I

    if-ge v9, v11, :cond_2

    .line 446
    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->aa:J

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->F:[J

    aget-wide v14, v14, v9

    int-to-long v3, v11

    div-long/2addr v14, v3

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->aa:J

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 448
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->v()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 450
    :cond_3
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ad:J

    sub-long v3, v5, v3

    const-wide/32 v11, 0x7a120

    cmp-long v3, v3, v11

    if-ltz v3, :cond_a

    .line 451
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->d()Z

    move-result v3

    iput-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ac:Z

    const-string v4, "AudioTrack"

    if-eqz v3, :cond_8

    .line 453
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->e()J

    move-result-wide v13

    div-long/2addr v13, v7

    .line 454
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->f()J

    move-result-wide v7

    .line 455
    iget-wide v11, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ao:J

    cmp-long v3, v13, v11

    if-gez v3, :cond_4

    .line 456
    iput-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ac:Z

    goto/16 :goto_1

    :cond_4
    sub-long v11, v13, v5

    .line 457
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v16, 0x4c4b40

    cmp-long v3, v11, v16

    const-string v9, ", "

    if-lez v3, :cond_6

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->s()J

    move-result-wide v11

    move-wide/from16 v18, v11

    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->t()J

    move-result-wide v10

    const/16 v12, 0xb4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v18

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    sget-boolean v2, Lcom/google/vr/sdk/widgets/video/deps/H;->c:Z

    if-nez v2, :cond_5

    .line 462
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 463
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ac:Z

    goto :goto_1

    .line 461
    :cond_5
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/H$e;

    invoke-direct {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/H$e;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_6
    invoke-direct {v0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/H;->c(J)J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v16, 0x4c4b40

    cmp-long v10, v10, v16

    if-lez v10, :cond_8

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->s()J

    move-result-wide v10

    move-object v15, v4

    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->t()J

    move-result-wide v3

    const/16 v12, 0xb6

    move-object/from16 v19, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    sget-boolean v2, Lcom/google/vr/sdk/widgets/video/deps/H;->c:Z

    if-nez v2, :cond_7

    move-object/from16 v2, v19

    .line 469
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 470
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ac:Z

    goto :goto_2

    .line 468
    :cond_7
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/H$e;

    invoke-direct {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/H$e;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_1
    move-object v2, v4

    .line 471
    :goto_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ae:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_9

    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-nez v3, :cond_9

    const/4 v3, 0x0

    .line 472
    :try_start_0
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->R:J

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ap:J

    const-wide/16 v9, 0x0

    .line 473
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ap:J

    const-wide/32 v9, 0x4c4b40

    cmp-long v1, v7, v9

    if-lez v1, :cond_9

    const/16 v1, 0x3d

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 476
    iput-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ap:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 479
    :catch_0
    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ae:Ljava/lang/reflect/Method;

    .line 480
    :cond_9
    :goto_3
    iput-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ad:J

    :cond_a
    return-void
.end method

.method private r()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s()J
    .locals 4

    .line 485
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ah:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ag:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->af:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private t()J
    .locals 4

    .line 486
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ak:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aj:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ai:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private u()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 487
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aa:J

    const/4 v2, 0x0

    .line 488
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Z:I

    .line 489
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Y:I

    .line 490
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ab:J

    .line 491
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ac:Z

    .line 492
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ad:J

    return-void
.end method

.method private v()Z
    .locals 2

    .line 494
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->N:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private w()Z
    .locals 2

    .line 495
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    .line 496
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    .line 497
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x()Landroid/media/AudioTrack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$d;
        }
    .end annotation

    .line 499
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->y()Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->O:Lcom/google/vr/sdk/widgets/video/deps/B;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/B;->d:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->e(I)I

    move-result v2

    .line 502
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->K:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->L:I

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->N:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_0

    .line 504
    :cond_1
    new-instance v0, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->K:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->L:I

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->N:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 505
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 507
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :catch_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/H$d;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->K:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->L:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/H$d;-><init>(IIII)V

    throw v0
.end method

.method private y()Landroid/media/AudioTrack;
    .locals 7

    .line 512
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aB:Z

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 514
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 515
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 516
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->O:Lcom/google/vr/sdk/widgets/video/deps/B;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/B;->a()Landroid/media/AudioAttributes;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 519
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->L:I

    .line 520
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->N:I

    .line 521
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->K:I

    .line 522
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    .line 524
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v6, v0

    .line 526
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method


# virtual methods
.method public a(Z)J
    .locals 6

    .line 34
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 37
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->q()V

    .line 38
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 39
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ac:Z

    if-eqz v4, :cond_2

    .line 40
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->e()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/H;->d(J)J

    move-result-wide v0

    .line 42
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->f()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 43
    invoke-direct {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/H;->c(J)J

    move-result-wide v0

    goto :goto_1

    .line 45
    :cond_2
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Z:I

    if-nez v2, :cond_3

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->c()J

    move-result-wide v0

    goto :goto_0

    .line 47
    :cond_3
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aa:J

    add-long/2addr v0, v2

    :goto_0
    if-nez p1, :cond_4

    .line 49
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ap:J

    sub-long/2addr v0, v2

    .line 50
    :cond_4
    :goto_1
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->an:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 3

    .line 311
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-eqz v0, :cond_0

    .line 312
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/s;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-object p1

    .line 314
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->B:Lcom/google/vr/sdk/widgets/video/deps/O;

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/s;->b:F

    .line 315
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/O;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->B:Lcom/google/vr/sdk/widgets/video/deps/O;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/s;->c:F

    .line 316
    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/O;->b(F)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(FF)V

    .line 317
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->S:Lcom/google/vr/sdk/widgets/video/deps/s;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 319
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/H$g;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/H$g;->a(Lcom/google/vr/sdk/widgets/video/deps/H$g;)Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object p1

    goto :goto_0

    .line 320
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 321
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 322
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 323
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->S:Lcom/google/vr/sdk/widgets/video/deps/s;

    goto :goto_1

    .line 324
    :cond_3
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 325
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-object p1
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->az:Z

    .line 158
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ao:J

    .line 160
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 350
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aq:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 351
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aq:F

    .line 352
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->n()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 335
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    if-eq v0, p1, :cond_0

    .line 336
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    .line 337
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->i()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/B;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->O:Lcom/google/vr/sdk/widgets/video/deps/B;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->O:Lcom/google/vr/sdk/widgets/video/deps/B;

    .line 330
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aB:Z

    if-eqz p1, :cond_1

    return-void

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->i()V

    const/4 p1, 0x0

    .line 333
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$c;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Ljava/lang/String;IIII[I)V

    return-void
.end method

.method public a(Ljava/lang/String;IIII[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$c;
        }
    .end annotation

    const-string v0, "audio/raw"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 57
    invoke-static {p4, p2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(II)I

    move-result p4

    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->af:I

    .line 58
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->A:Lcom/google/vr/sdk/widgets/video/deps/I;

    invoke-virtual {p4, p6}, Lcom/google/vr/sdk/widgets/video/deps/I;->a([I)V

    .line 59
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->C:[Lcom/google/vr/sdk/widgets/video/deps/F;

    array-length p6, p4

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p6, :cond_2

    aget-object v5, p4, v3

    .line 60
    :try_start_0
    invoke-interface {v5, p3, p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/F;->a(III)Z

    move-result v6
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/F$a; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v4, v6

    .line 64
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/F;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/F;->b()I

    move-result p2

    .line 66
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/F;->c()I

    move-result p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 63
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/H$c;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/H$c;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    if-eqz v4, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->k()V

    goto :goto_2

    :cond_3
    move v4, v2

    :cond_4
    :goto_2
    const/16 p4, 0xfc

    const/16 p6, 0xc

    packed-switch p2, :pswitch_data_0

    .line 87
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/H$c;

    const/16 p3, 0x26

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unsupported channel count: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/H$c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :pswitch_0
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/b;->z:I

    goto :goto_3

    :pswitch_1
    const/16 v3, 0x4fc

    goto :goto_3

    :pswitch_2
    move v3, p4

    goto :goto_3

    :pswitch_3
    const/16 v3, 0xdc

    goto :goto_3

    :pswitch_4
    const/16 v3, 0xcc

    goto :goto_3

    :pswitch_5
    const/16 v3, 0x1c

    goto :goto_3

    :pswitch_6
    move v3, p6

    goto :goto_3

    :pswitch_7
    const/4 v3, 0x4

    .line 88
    :goto_3
    sget v5, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v6, 0x17

    const/4 v7, 0x5

    if-gt v5, v6, :cond_6

    sget-object v5, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v6, "foster"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/google/vr/sdk/widgets/video/deps/gM;->c:Ljava/lang/String;

    const-string v6, "NVIDIA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    if-eq p2, v5, :cond_7

    if-eq p2, v7, :cond_7

    const/4 p4, 0x7

    if-eq p2, p4, :cond_5

    goto :goto_4

    .line 90
    :cond_5
    sget p4, Lcom/google/vr/sdk/widgets/video/deps/b;->z:I

    goto :goto_5

    :cond_6
    :goto_4
    move p4, v3

    .line 94
    :cond_7
    :goto_5
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v5, 0x19

    if-gt v3, v5, :cond_8

    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v5, "fugu"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    if-ne p2, v1, :cond_8

    goto :goto_6

    :cond_8
    move p6, p4

    :goto_6
    if-nez v4, :cond_9

    .line 96
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result p4

    if-eqz p4, :cond_9

    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->M:I

    if-ne p4, p1, :cond_9

    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->K:I

    if-ne p4, p3, :cond_9

    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->L:I

    if-ne p4, p6, :cond_9

    return-void

    .line 98
    :cond_9
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->i()V

    .line 99
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->M:I

    .line 100
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    .line 101
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->K:I

    .line 102
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->L:I

    const/4 p4, 0x2

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move p1, p4

    .line 103
    :goto_7
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->N:I

    .line 104
    invoke-static {p4, p2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(II)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ai:I

    if-eqz p5, :cond_b

    .line 106
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    goto :goto_b

    :cond_b
    if-eqz v0, :cond_e

    .line 108
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->N:I

    if-eq p1, v7, :cond_d

    const/4 p2, 0x6

    if-ne p1, p2, :cond_c

    goto :goto_8

    :cond_c
    const p1, 0xc000

    .line 110
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    goto :goto_b

    :cond_d
    :goto_8
    const/16 p1, 0x5000

    .line 109
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    goto :goto_b

    .line 111
    :cond_e
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->N:I

    .line 112
    invoke-static {p3, p6, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_f

    goto :goto_9

    :cond_f
    move v1, v2

    .line 113
    :goto_9
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    mul-int/lit8 p2, p1, 0x4

    const-wide/32 p3, 0x3d090

    .line 115
    invoke-direct {p0, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/H;->d(J)J

    move-result-wide p3

    long-to-int p3, p3

    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ai:I

    mul-int/2addr p3, p4

    int-to-long p4, p1

    const-wide/32 v1, 0xb71b0

    .line 117
    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/H;->d(J)J

    move-result-wide v1

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ai:I

    int-to-long v3, p1

    mul-long/2addr v1, v3

    .line 118
    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    long-to-int p1, p4

    if-ge p2, p3, :cond_10

    move p2, p3

    goto :goto_a

    :cond_10
    if-le p2, p1, :cond_11

    move p2, p1

    .line 121
    :cond_11
    :goto_a
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    :goto_b
    if-eqz v0, :cond_12

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_c

    .line 122
    :cond_12
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ai:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/H;->c(J)J

    move-result-wide p1

    :goto_c
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->R:J

    .line 123
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->z:Lcom/google/vr/sdk/widgets/video/deps/C;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/C;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;J)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$d;,
            Lcom/google/vr/sdk/widgets/video/deps/H$h;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 165
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->at:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    :goto_1
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v4

    if-nez v4, :cond_2

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->l()V

    .line 168
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->az:Z

    if-eqz v4, :cond_2

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->a()V

    .line 170
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->v()Z

    move-result v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    if-eqz v4, :cond_4

    .line 171
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 172
    iput-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->aC:Z

    return v5

    .line 174
    :cond_3
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_4

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    .line 175
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->b()J

    move-result-wide v10

    cmp-long v4, v10, v7

    if-eqz v4, :cond_4

    return v5

    .line 177
    :cond_4
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->aC:Z

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->e()Z

    move-result v10

    iput-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->aC:Z

    if-eqz v4, :cond_5

    if-nez v10, :cond_5

    .line 179
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_5

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->aD:J

    sub-long v18, v10, v12

    .line 181
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->D:Lcom/google/vr/sdk/widgets/video/deps/H$f;

    iget v15, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->Q:I

    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->R:J

    invoke-static {v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v16

    invoke-interface/range {v14 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/H$f;->a(IJJ)V

    .line 182
    :cond_5
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->at:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    if-nez v4, :cond_e

    .line 183
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_6

    return v6

    .line 185
    :cond_6
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->al:I

    if-nez v4, :cond_7

    .line 186
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->N:I

    invoke-static {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(ILjava/nio/ByteBuffer;)I

    move-result v4

    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->al:I

    .line 187
    :cond_7
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->S:Lcom/google/vr/sdk/widgets/video/deps/s;

    if-eqz v4, :cond_9

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->m()Z

    move-result v4

    if-nez v4, :cond_8

    return v5

    .line 190
    :cond_8
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    new-instance v15, Lcom/google/vr/sdk/widgets/video/deps/H$g;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->S:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 191
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->t()J

    move-result-wide v5

    invoke-direct {v0, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/H;->c(J)J

    move-result-wide v5

    const/16 v17, 0x0

    move-object v11, v15

    move-object v9, v15

    move-wide v15, v5

    invoke-direct/range {v11 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/H$g;-><init>(Lcom/google/vr/sdk/widgets/video/deps/s;JJLcom/google/vr/sdk/widgets/video/deps/H$1;)V

    .line 193
    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    iput-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->S:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->k()V

    .line 196
    :cond_9
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    if-nez v4, :cond_a

    .line 197
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->an:J

    const/4 v4, 0x1

    .line 198
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    goto :goto_3

    :cond_a
    const/4 v4, 0x1

    .line 199
    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->an:J

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->s()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/H;->c(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 201
    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    if-ne v7, v4, :cond_b

    sub-long v7, v5, v2

    .line 202
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v11, 0x30d40

    cmp-long v4, v7, v11

    if-lez v4, :cond_b

    const/16 v4, 0x50

    .line 203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", got "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AudioTrack"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    .line 204
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    goto :goto_2

    :cond_b
    const/4 v4, 0x2

    .line 205
    :goto_2
    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    if-ne v7, v4, :cond_c

    .line 206
    iget-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->an:J

    sub-long v4, v2, v5

    add-long/2addr v7, v4

    iput-wide v7, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->an:J

    const/4 v4, 0x1

    .line 207
    iput v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    .line 208
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->D:Lcom/google/vr/sdk/widgets/video/deps/H$f;

    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/H$f;->a()V

    .line 209
    :cond_c
    :goto_3
    iget-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-eqz v4, :cond_d

    .line 210
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ah:J

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->al:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ah:J

    goto :goto_4

    .line 211
    :cond_d
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ag:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->ag:J

    .line 212
    :goto_4
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->at:Ljava/nio/ByteBuffer;

    .line 213
    :cond_e
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->P:Z

    if-eqz v1, :cond_f

    .line 214
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->at:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(Ljava/nio/ByteBuffer;J)Z

    goto :goto_5

    .line 215
    :cond_f
    invoke-direct {v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(J)V

    .line 216
    :goto_5
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->at:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_10

    .line 217
    iput-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/H;->at:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    return v1

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public b()V
    .locals 2

    .line 162
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 163
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 339
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 340
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aB:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    if-eq v0, p1, :cond_2

    .line 341
    :cond_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aB:Z

    .line 342
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    .line 343
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->i()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/H$h;
        }
    .end annotation

    .line 279
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ay:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a(J)V

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->X:I

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ay:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 306
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public e()Z
    .locals 4

    .line 307
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->t()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-object v0
.end method

.method public g()V
    .locals 1

    .line 345
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aB:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aB:Z

    .line 347
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    .line 348
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->i()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->az:Z

    .line 360
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->u()V

    .line 362
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 7

    .line 364
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    .line 365
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ag:J

    .line 366
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ah:J

    .line 367
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aj:J

    .line 368
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ak:J

    const/4 v2, 0x0

    .line 369
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->al:I

    .line 370
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->S:Lcom/google/vr/sdk/widgets/video/deps/s;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 371
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 372
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->S:Lcom/google/vr/sdk/widgets/video/deps/s;

    goto :goto_0

    .line 373
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/H$g;

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/H$g;->a(Lcom/google/vr/sdk/widgets/video/deps/H$g;)Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object v3

    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->T:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 375
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->H:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 376
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->U:J

    .line 377
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->V:J

    .line 378
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->at:Ljava/nio/ByteBuffer;

    .line 379
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->au:Ljava/nio/ByteBuffer;

    move v3, v2

    .line 380
    :goto_1
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ar:[Lcom/google/vr/sdk/widgets/video/deps/F;

    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 381
    aget-object v5, v5, v3

    .line 382
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/F;->g()V

    .line 383
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->as:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/F;->e()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 385
    :cond_2
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ay:Z

    const/4 v3, -0x1

    .line 386
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ax:I

    .line 387
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->W:Ljava/nio/ByteBuffer;

    .line 388
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->X:I

    .line 389
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->am:I

    .line 390
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->ap:J

    .line 391
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->u()V

    .line 392
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 394
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 395
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    .line 396
    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->J:Landroid/media/AudioTrack;

    .line 397
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->G:Lcom/google/vr/sdk/widgets/video/deps/H$a;

    invoke-virtual {v1, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/H$a;->a(Landroid/media/AudioTrack;Z)V

    .line 398
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->E:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 399
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/H$1;

    invoke-direct {v1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/H$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/H;Landroid/media/AudioTrack;)V

    .line 400
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/H$1;->start()V

    :cond_4
    return-void
.end method

.method public j()V
    .locals 5

    .line 402
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->i()V

    .line 403
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/H;->o()V

    .line 404
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->C:[Lcom/google/vr/sdk/widgets/video/deps/F;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 405
    invoke-interface {v4}, Lcom/google/vr/sdk/widgets/video/deps/F;->h()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_0
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->aA:I

    .line 408
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/H;->az:Z

    return-void
.end method
