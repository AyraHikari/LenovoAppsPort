.class public final enum Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;
.super Ljava/lang/Enum;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/anim/StateTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum FadeIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum FadeOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum Outgoing:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum PhotoIncoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum PhotoPickIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum PhotoPickOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum PhotoSwitchIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum PhotoSwitchOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum SlidingLeft:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field public static final enum SlidingRight:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 251
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "Outgoing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "Incoming"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "PhotoIncoming"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "SlidingLeft"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->SlidingLeft:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "SlidingRight"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->SlidingRight:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 252
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "PhotoSwitchIn"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoSwitchIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "PhotoSwitchOut"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoSwitchOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "FadeIn"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "FadeOut"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 253
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "PhotoPickIn"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoPickIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const-string v1, "PhotoPickOut"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoPickOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 251
    sget-object v14, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v14, v1, v2

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Outgoing:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->Incoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoIncoming:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->SlidingLeft:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v6

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->SlidingRight:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v7

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoSwitchIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v8

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoSwitchOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v9

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v10

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->FadeOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v11

    sget-object v2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoPickIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->$VALUES:[Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;
    .locals 1

    .line 251
    const-class v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;
    .locals 1

    .line 251
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->$VALUES:[Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-virtual {v0}, [Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    return-object v0
.end method
