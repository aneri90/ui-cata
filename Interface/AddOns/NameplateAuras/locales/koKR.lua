local L = LibStub("AceLocale-3.0"):NewLocale("NameplateAuras", "koKR"); -- luacheck: ignore
L = L or {} -- luacheck: ignore
--@non-debug@
L["< 1min"] = "< 1분"
L["< 5sec"] = "< 5초"
L["> 1min"] = "> 1분"
L["Add spell"] = "주문 추가"
L["Always show auras cast by myself"] = "내가 시전한 효과 항상 표시"
L["Anchor point"] = "고정 지점"
L["Anchor to icon"] = "아이콘에 고정"
L["anchor-point:bottom"] = "하단"
L["anchor-point:bottomleft"] = "좌측 하단"
L["anchor-point:bottomright"] = "우측 하단"
L["anchor-point:center"] = "가운데"
L["anchor-point:left"] = "좌측"
L["anchor-point:right"] = "우측"
L["anchor-point:top"] = "상단"
L["anchor-point:topleft"] = "좌측 상단"
L["anchor-point:topright"] = "우측 상단"
L["Any"] = "모두"
L["Aura type"] = "효과 유형"
L["Border thickness"] = "테두리 두께"
L["Buff"] = "강화 효과"
L["Check spell ID"] = "주문 ID 확인 (쉼표로 구분)"
L["Click to select spell"] = "주문을 선택하려면 클릭"
L["Curse"] = "저주"
L["Debuff"] = "약화 효과"
L["Delete all spells"] = "모든 주문 삭제"
L["Delete spell"] = "주문 삭제"
L["Disabled"] = "비활성화 됨"
L["Disease"] = "질병"
L["Display auras on player's nameplate"] = "플레이어 이름표에 효과 표시"
L["Do you really want to delete ALL spells?"] = "정말 모든 주문을 삭제할까요?"
L["Font"] = "글꼴"
L["Font scale"] = "글꼴 크기 비율"
L["Font size"] = "글꼴 크기"
L["General"] = "일반"
L["Icon borders"] = "아이콘 테두리"
L["Icon X-coord offset"] = "아이콘 X 좌표"
L["Icon Y-coord offset"] = "아이콘 Y 좌표"
L["icon-grow-direction:down"] = "아래로"
L["icon-grow-direction:left"] = "왼쪽으로"
L["icon-grow-direction:right"] = "오른쪽으로"
L["icon-grow-direction:up"] = "위로"
L["icon-sort-mode:by-aura-type+by-expire-time"] = "효과 유형 + 만료 시간별로"
L["icon-sort-mode:by-expire-time"] = "만료 시간별로"
L["icon-sort-mode:by-icon-size"] = "아이콘 크기별로"
L["icon-sort-mode:custom"] = "사용자 정의"
L["icon-sort-mode:none"] = "정렬 안 함"
L["instance-type:arena"] = "투기장"
L["instance-type:none"] = "오픈 월드"
L["instance-type:party"] = "5인 던전"
L["instance-type:pvp"] = "전장"
L["instance-type:pvp_bg_40ppl"] = "40인 전장"
L["instance-type:raid"] = "공격대 던전"
L["instance-type:scenario"] = "시나리오"
L["instance-type:unknown"] = "알 수 없는 던전 (일부 퀘스트 시나리오)"
L["Magic"] = "마법"
L["Options are not available in combat!"] = "전투 중에는 옵션을 사용할 수 없습니다!"
L["options:alpha:alpha"] = "아이콘 투명도 (대상 이름표 제외)"
L["options:alpha:alpha-target"] = "대상 이름표에 있는 아이콘의 투명도"
L["options:alpha:use-target-alpha-if-not-target-selected"] = "대상이 선택되지 않은 경우 대상의 투명도와 함께 효과 표시"
L["options:animation-type:ICON_ANIMATION_TYPE_ALPHA"] = "투명도"
L["options:apps:dispellable-spells"] = "적 이름표에 해제/훔치기 가능한 효과 표시"
L["options:apps:dispellable-spells:black-list-button"] = "차단목록 열기"
L["options:apps:dispellable-spells:tooltip"] = "적 이름표에 해제/훔치기 가능한 효과를 표시합니다. 이 효과는 희미한 빛과 기본 크기를 가집니다."
L["options:apps:dr"] = "점감 표시 사용 (베타)"
L["options:apps:dr:pve"] = "PvE (기절만)"
L["options:apps:dr:pvp"] = "PvP"
L["options:apps:explosive-orbs:tooltip"] = [=[폭발물 이름표 위에 특별 효과 표시 (쐐기 폭탄 수정치)
이 효과는 밝은 빛과 기본 크기를 가집니다.]=]
L["options:apps:spiteful"] = "원한의 망령 강조 (원한 쐐기돌 수정치)"
L["options:apps:spiteful:sound"] = "소리"
L["options:auras:enabled-state:tooltip"] = [=[%s: 효과 표시 안 함
%s: 내가 시전한 경우 표시 
%s: 모두 보기]=]
L["options:auras:enabled-state-all"] = "사용, 모든 효과 표시"
L["options:auras:enabled-state-mineonly"] = "사용, 내 효과만 표시"
L["options:auras:show-on-npcs"] = "NPC에만 이 효과 표시"
L["options:auras:show-on-npcs-and-players"] = "플레이어 및 NPC에 이 효과 표시"
L["options:auras:show-on-players"] = "플레이어에만 이 효과 표시"
L["options:borders:BORDER_TYPE_BUILTIN"] = "내장"
L["options:borders:BORDER_TYPE_CUSTOM"] = "사용자 정의"
L["options:borders:border-file-path"] = "테두리 텍스처 파일 경로 ('Interface\\'로 시작)"
L["options:borders:border-type"] = "테두리 유형"
L["options:category:alpha"] = "투명도"
L["options:category:apps"] = "앱"
L["options:category:dispel"] = "정화/훔치기"
L["options:category:icon-groups"] = "아이콘 그룹"
L["options:category:interrupts"] = "방해"
L["options:category:size-and-position"] = "크기 및 위치"
L["options:general:always-show-my-auras:tooltip"] = "이것은 최우선 필터입니다. 이 기능을 사용하면 다른 필터와 상관없이 효과가 표시됩니다."
L["options:general:always-show-my-auras-blacklist:button"] = "-> 차단목록"
L["options:general:always-show-my-auras-blacklist:button:tooltip"] = "주의! 주문이 '주문' 목록 및 이 차단목록에 추가되면 이름표에 표시됩니다."
L["options:general:current-icon-group"] = "현재 아이콘 그룹"
L["options:general:export-profile"] = "프로필 내보내기"
--[[Translation missing --]]
L["options:general:friendly-units-auras-instance-types"] = [=[Set the visibility of auras on allied HP bars
in different location types]=]
L["options:general:hide-blizz-frames"] = "Blizzard 효과 창 숨기기 (플레이어 제외)"
L["options:general:hide-player-blizz-frame"] = "플레이어의 Blizzard 효과 창 숨기기"
L["options:general:icon-grow-direction"] = "아이콘 성장 방향"
L["options:general:import-profile"] = "프로필 가져오기"
--[[Translation missing --]]
L["options:general:instance-types"] = [=[Set the visibility of auras on enemy HP bars
in different location types]=]
L["options:general:masque-experimental"] = "Masque 지원 사용 (실험 중)"
L["options:general:npc-blacklist"] = "NPC 차단목록"
L["options:general:npc-blacklist-add-button"] = "NPC 추가"
L["options:general:npc-blacklist-editbox-add"] = "여기에 NPC 이름을 입력하세요."
L["options:general:show-aura-tooltip"] = "마우스가 효과 아이콘 위에 있을 때 효과 이름 표시"
L["options:general:show-cooldown-animation"] = "재사용 대기시간 애니메이션 표시"
L["options:general:show-cooldown-text"] = "효과의 남은 시간 표시"
--[[Translation missing --]]
L["options:general:show-on-ally-target-even-in-disabled-area-types"] = "Show auras on allied target's nameplate even in disabled types of zones"
--[[Translation missing --]]
L["options:general:show-on-enemy-target-even-in-disabled-area-types"] = "Show auras on enemy target's nameplate even in disabled types of zones"
L["options:general:show-on-target-only"] = "대상 이름표에만 효과 표시"
L["options:general:show-stacks"] = "효과의 중첩 표시"
L["options:general:test-mode"] = "시험 모드"
L["options:general:use-default-tooltip"] = "기본 Blizzard 효과 툴팁 표시"
L["options:glow-type"] = "반짝임 유형"
L["options:glow-type:GLOW_TYPE_ACTIONBUTTON"] = "행동 단축 버튼"
L["options:glow-type:GLOW_TYPE_ACTIONBUTTON_DIM"] = "행동 단축 버튼 (희미함)"
L["options:glow-type:GLOW_TYPE_AUTOUSE"] = "자동 사용 버튼"
L["options:glow-type:GLOW_TYPE_NONE"] = "없음"
L["options:glow-type:GLOW_TYPE_PIXEL"] = "픽셀"
L["options:icon-groups:description"] = "아이콘 그룹은 독립 설정이 있는 아이콘 집합입니다. 예를 들어 약화 효과 아이콘 그룹, 방해 아이콘 그룹, 중요한 우두머리 강화 효과 아이콘 그룹을 따로 만들 수 있습니다. 그런 다음 이러한 아이콘 그룹을 이름표 주위에 독립 배치할 수 있습니다. 참고로 애드온은 강화 효과와 약화 효과를 구분할 수 없으므로 주문으로 그룹을 채우는 것은 안타깝게도 여러분의 책임입니다. :) 이 창의 왼쪽 상단 모서리에 있는 드롭다운 메뉴에는 현재 편집 중인 아이콘 그룹이 표시됩니다. 주의: 주문은 아이콘 그룹 간에 공유되지만, 이름은 같지만 옵션이 다른 주문을 여러 개 생성한 다음 다른 아이콘 그룹으로 연결되는 링크를 설정할 수 있습니다."
L["options:icon-groups:dropdown-list"] = "아이콘 그룹"
L["options:icon-groups:editbox-add-text"] = "이름을 입력하고 Enter 키를 눌러 새 아이콘 그룹을 추가합니다."
L["options:icon-groups:remove"] = "삭제"
L["options:interrupts:enable-interrupts"] = "방해 추적 사용"
L["options:interrupts:enable-only-during-pvp-battles"] = "PVP 전투에서만 사용"
L["options:interrupts:use-shared-icon-texture"] = "모든 방해 주문에 동일한 텍스처 사용"
L["options:size-and-position:anchor-point-of-frame"] = "아이콘 그룹에 대한 고정 지점"
L["options:size-and-position:anchor-point-of-frame:tooltip"] = "'아이콘 그룹'은 이름표당 아이콘 모음입니다."
L["options:size-and-position:anchor-point-to-nameplate"] = "이름표에 대한 고정 지점"
L["options:size-and-position:custom-sorting:tooltip"] = [=[규칙:
   - 코드는 인수가 2개인 이름 없는 함수여야 합니다. 이러한 인수는 비교할 효과를 나타내는 테이블입니다.
   - 이 함수는 첫 번째 효과가 두 번째 효과 앞에 배치되어야 하는 경우 true를 반환해야 하고 그렇지 않으면 false를 반환해야 합니다.
   - 정렬이 꽤 자주 수행되므로 정렬 함수를 너무 무겁게 만들지 마세요.
   - 당신이 하는 일을 정말로 알지 못한다면 효과 테이블의 내용을 수정하지 마세요.
   - 낯선 이에게 받은 코드를 다시 확인하세요.

효과 테이블 내용:
   - aura.duration - 초 단위 효과 지속 시간을 포함합니다. 효과가 영구적인 경우 이 필드값은 0입니다. (유형: 숫자)
   - aura.expires - 효과가 끝나는 시간. GetTime()과 비교할 수 있습니다. 효과가 영구적인 경우 이 필드값은 0입니다. (유형: 숫자)
   - aura.stacks - 중첩 수 (유형: 숫자)
   - aura.spellID - 효과 ID (유형: 숫자)
   - aura.spellName - 효과 이름 (유형: 문자열)

내장 정렬 함수 (결과는 부울 값):
  - local result = sort_time(효과1, 효과2) - 효과 남은 시간별 정렬
  - local result = sort_size(효과1, 효과2) - 아이콘 크기별 정렬]=]
L["options:size-and-position:icon-align"] = "아이콘 정렬"
L["options:size-and-position:icon-align:bottom-left"] = "가로: 하단 / 세로: 좌측"
L["options:size-and-position:icon-align:center"] = "가운데"
L["options:size-and-position:icon-align:top-right"] = "가로: 상단 / 세로: 우측"
L["options:size-and-position:icon-height"] = "기본 아이콘 높이"
L["options:size-and-position:icon-width"] = "기본 아이콘 너비"
L["options:size-and-position:icon-zoom"] = "아이콘 확대"
L["options:size-and-position:keep-aspect-ratio"] = "텍스처의 종횡비 유지"
L["options:size-and-position:keep-aspect-ratio:tooltip"] = "이 옵션을 켜고 아이콘의 너비와 높이가 같지 않으면 주문의 텍스처가 원래 이미지 비율을 저장하는 방식으로 잘립니다."
--[[Translation missing --]]
L["options:size-and-position:nameplate-is-parent"] = "Attach icons directly to nameplates"
--[[Translation missing --]]
L["options:size-and-position:nameplate-is-parent:tooltip"] = "The icons will be deeply attached to the nameplates. This means that certain parameters of the icons (such as size, transparency, and even visibility) will be influenced by the parameters of the nameplates themselves. The icons will be positioned exactly at the same frame level as the nameplates."
L["options:size-and-position:non-target-strata"] = "비대상 이름표 아이콘의 레이어"
L["options:size-and-position:scale-target"] = "대상 이름표 아이콘의 크기 비율"
L["options:size-and-position:target-strata"] = "대상 이름표 아이콘의 레이어"
L["options:spells:add-import-new-spell"] = "효과 추가/가져오기"
L["options:spells:add-new-spell"] = "주문 이름/링크/ID 또는 가져오기 문자열..."
L["options:spells:animation-relative:tooltip"] = [=[이 옵션은 왼쪽 슬라이더의 의미를 바꿉니다.

이 옵션을 켜면 남은 효과 지속 시간이 선택한 이 효과의 최대 지속 시간 백분율보다 작을 때 애니메이션이 시작됩니다. 예를 들어, DoT 주문의 지속 시간을 잃지 않고 안전하게 다시 적용할 수 있는 때를 알고 싶다면 유용합니다.

이 옵션을 끄면 남은 효과 지속 시간이 슬라이더의 절댓값(초)보다 작을 때 애니메이션이 시작됩니다.]=]
L["options:spells:animation-type"] = "애니메이션 유형"
L["options:spells:appropriate-spell-ids"] = "알맞은 주문 ID:"
--[[Translation missing --]]
L["options:spells:batch-actions"] = "Batch actions"
--[[Translation missing --]]
L["options:spells:consolidate"] = "Consolidate aura instances"
--[[Translation missing --]]
L["options:spells:consolidate:tooltip"] = "Combine multiple instances of this aura into one aura"
L["options:spells:disable-all-spells"] = "모든 주문 사용 안 함"
L["options:spells:enable-all-spells"] = "모든 주문 사용"
L["options:spells:export-spell"] = "효과 내보내기"
L["options:spells:glow-relative"] = "상대 시간 사용"
L["options:spells:glow-relative:tooltip"] = [=[이 옵션은 왼쪽 슬라이더의 의미를 바꿉니다.

이 옵션을 켜면 남은 효과 지속 시간이 선택한 이 효과의 최대 지속 시간 백분율보다 작을 때 반짝임이 나타납니다. 예를 들어, DoT 주문의 지속 시간을 잃지 않고 안전하게 다시 적용할 수 있는 때를 알고 싶다면 유용합니다.

이 옵션을 끄면 남은 효과 지속 시간이 슬라이더의 절댓값(초)보다 작을 때 반짝임이 나타납니다.]=]
L["options:spells:icon-animation"] = "아이콘 애니메이션"
L["options:spells:icon-animation-always"] = "항상 애니메이션 표시"
L["options:spells:icon-animation-threshold"] = "효과의 남은 시간이 다음보다 짧다면 애니메이션 표시"
L["options:spells:icon-border:builtin"] = "테두리: 내장"
L["options:spells:icon-border:custom"] = "테두리: 사용자 정의"
L["options:spells:icon-border:disabled"] = "테두리: 사용 안 함"
L["options:spells:icon-glow"] = "반짝임 표시"
L["options:spells:icon-glow-always"] = "항상 반짝임 표시"
L["options:spells:icon-glow-threshold"] = "효과의 남은 시간이 다음보다 짧다면 반짝임 표시"
L["options:spells:icon-height"] = "아이콘 높이"
L["options:spells:icon-width"] = "아이콘 너비"
--[[Translation missing --]]
L["options:spells:override-size"] = "Override aura size"
--[[Translation missing --]]
L["options:spells:override-size:tooltip"] = "Set custom size for aura. Pay attention: this applies to all icon groups!"
L["options:spells:please-push-once-more"] = "한번 더 누르세요."
--[[Translation missing --]]
L["options:spells:set-all-spells-to-my-auras-only"] = "Set all spells to 'show only my auras'"
L["options:spells:spell-tooltip"] = "주문 툴팁은 문자가 포함되어야 합니다."
--[[Translation missing --]]
L["options:style-and-position:show-cooldown-swipe-edge"] = "Show cooldown swipe edge"
--[[Translation missing --]]
L["options:style-and-position:show-cooldown-swipe-edge:tooltip"] = "Show/hide bright line on cooldown animation's edge"
L["options:timer-text:min-duration-to-display-tenths-of-seconds"] = "1/10초를 표시하는 최소 지속 시간"
L["options:timer-text:relative-color"] = "그러데이션 색상 사용"
L["options:timer-text:relative-color:tooltip"] = "타이머 문자의 색상은 효과의 지속 시간과 남은 시간에 따라 동적으로 계산됩니다."
L["options:timer-text:scale-font-size"] = "아이콘 크기에 따라 글꼴 크기 조정"
L["options:timer-text:text-color-note"] = "남은 시간에 따라 문자 색상이 바뀝니다:"
L["Other"] = "기타"
L["Please reload UI to apply changes"] = "변경점을 적용하려면 UI를 재시작 해주세요"
L["Poison"] = "독"
L["Profiles"] = "프로필"
L["Reload UI"] = "UI 새로고침"
L["Show border around buff icons"] = "강화 효과 아이콘 주위에 테두리 표시"
L["Show border around debuff icons"] = "약화 효과 아이콘 주위에 테두리 표시"
L["Show this aura on nameplates of allies"] = "이 효과를 아군 이름표에 표시"
L["Show this aura on nameplates of enemies"] = "이 효과를 적 이름표에 표시"
L["Sort mode:"] = "정렬 방식:"
L["Space between icons"] = "아이콘 사이 간격"
L["Spell seems to be nonexistent"] = "주문이 존재하지 않습니다"
L["Spells"] = "주문"
L["Stack text"] = "중첩 문자"
L["Text color"] = "문자 색상"
L["Timer text"] = "타이머 문자"
L["Value must be a number"] = "값은 숫자여야 합니다."
L["X offset"] = "X 좌표"
L["Y offset"] = "Y 좌표"

--@end-non-debug@
