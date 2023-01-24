.class public Lcom/google/vr/sdk/widgets/video/deps/fI$c;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fI$c$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3


# instance fields
.field public final d:I

.field public final e:Lcom/google/vr/sdk/widgets/video/deps/fy;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fy;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$c;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$c;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$c;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 11
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$c;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$c;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 7
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$c;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/fy;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$c;->e:Lcom/google/vr/sdk/widgets/video/deps/fy;

    .line 15
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fI$c;->d:I

    return-void
.end method
