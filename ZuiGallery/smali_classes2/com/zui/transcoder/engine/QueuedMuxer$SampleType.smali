.class public final enum Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;
.super Ljava/lang/Enum;
.source "QueuedMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/transcoder/engine/QueuedMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

.field public static final enum AUDIO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

.field public static final enum VIDEO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 102
    new-instance v0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->VIDEO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    new-instance v0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    const-string v1, "AUDIO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->AUDIO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    sget-object v4, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->VIDEO:Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->$VALUES:[Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;
    .locals 1

    .line 102
    const-class v0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    return-object p0
.end method

.method public static values()[Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;
    .locals 1

    .line 102
    sget-object v0, Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->$VALUES:[Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    invoke-virtual {v0}, [Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/transcoder/engine/QueuedMuxer$SampleType;

    return-object v0
.end method
