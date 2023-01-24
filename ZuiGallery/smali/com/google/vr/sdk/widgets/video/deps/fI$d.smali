.class public final Lcom/google/vr/sdk/widgets/video/deps/fI$d;
.super Lcom/google/vr/sdk/widgets/video/deps/fI$c;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fy;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Invalid content type: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fI$c;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$d;->f:Ljava/lang/String;

    return-void
.end method
