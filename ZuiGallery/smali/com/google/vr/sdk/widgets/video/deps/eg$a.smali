.class public final Lcom/google/vr/sdk/widgets/video/deps/eg$a;
.super Ljava/lang/Object;
.source "HlsMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/vr/sdk/widgets/video/deps/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eg$a;->b:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eg$a;
    .locals 7

    const-string v0, "0"

    const-string v1, "application/x-mpegURL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1
    invoke-static/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    invoke-direct {v1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eg$a;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return-object v1
.end method
