.class public final enum Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;
.super Ljava/lang/Enum;
.source "MicroviewOperationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

.field public static final enum ENDED:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

.field public static final enum ERROR:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

.field public static final enum LOADING:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

.field public static final enum PAUSED:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

.field public static final enum PLAYING:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1387
    new-instance v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    const-string v1, "PLAYING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->PLAYING:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    .line 1388
    new-instance v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    const-string v1, "PAUSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->PAUSED:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    .line 1389
    new-instance v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    const-string v1, "ENDED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->ENDED:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    .line 1390
    new-instance v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->ERROR:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    .line 1391
    new-instance v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    const-string v1, "LOADING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->LOADING:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    .line 1386
    sget-object v7, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->PLAYING:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    aput-object v7, v1, v2

    sget-object v2, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->PAUSED:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->ENDED:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->ERROR:Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->$VALUES:[Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;
    .locals 1

    .line 1386
    const-class v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;
    .locals 1

    .line 1386
    sget-object v0, Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->$VALUES:[Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    invoke-virtual {v0}, [Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/ui/videoedit/MicroviewOperationBar$State;

    return-object v0
.end method
