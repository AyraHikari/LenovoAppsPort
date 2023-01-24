.class public final Lcom/google/vr/sdk/widgets/video/deps/fR;
.super Ljava/lang/Object;
.source "UdpDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fR$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x7d0

.field public static final b:I = 0x1f40


# instance fields
.field private final c:Lcom/google/vr/sdk/widgets/video/deps/fQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fR;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:[B

.field private final f:Ljava/net/DatagramPacket;

.field private g:Landroid/net/Uri;

.field private h:Ljava/net/DatagramSocket;

.field private i:Ljava/net/MulticastSocket;

.field private j:Ljava/net/InetAddress;

.field private k:Ljava/net/InetSocketAddress;

.field private l:Z

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fR;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x7d0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/fR;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fR;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x1f40

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/fR;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fQ;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fQ<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/fR;",
            ">;II)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    .line 7
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->d:I

    .line 8
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->e:[B

    .line 9
    new-instance p1, Ljava/net/DatagramPacket;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->e:[B

    const/4 v0, 0x0

    invoke-direct {p1, p3, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->f:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fR$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->m:I

    if-nez v0, :cond_1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->h:Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->f:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->f:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->m:I

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v1, :cond_1

    .line 41
    invoke-interface {v1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fR$a;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fR$a;-><init>(Ljava/io/IOException;)V

    throw p2

    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->f:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->m:I

    sub-int/2addr v0, v1

    .line 43
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 44
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->e:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->m:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->m:I

    return p3
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fR$a;
        }
    .end annotation

    .line 11
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->g:Landroid/net/Uri;

    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 14
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->j:Ljava/net/InetAddress;

    .line 15
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->j:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->k:Ljava/net/InetSocketAddress;

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->j:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->k:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->i:Ljava/net/MulticastSocket;

    .line 18
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->j:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->i:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->h:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->k:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->h:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->h:Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->d:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->l:Z

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    .line 27
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fR$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fR$a;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 23
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fR$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fR$a;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->g:Landroid/net/Uri;

    .line 49
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->i:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->j:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->i:Ljava/net/MulticastSocket;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->h:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 56
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->h:Ljava/net/DatagramSocket;

    .line 57
    :cond_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->j:Ljava/net/InetAddress;

    .line 58
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->k:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->m:I

    .line 60
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->l:Z

    if-eqz v1, :cond_2

    .line 61
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->l:Z

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->c:Lcom/google/vr/sdk/widgets/video/deps/fQ;

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fQ;->a(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fR;->g:Landroid/net/Uri;

    return-object v0
.end method
